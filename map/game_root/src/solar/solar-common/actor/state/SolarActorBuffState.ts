/**
 * 太阳Buff系统 调度中心
 *
 */
import {Trigger} from "@/w3ts/handles/trigger";
import ObjectPool from "@/ObjectPool";
import SelectUtil from "@/util/unit/SelectUtil";
import SingletonUtil from "@/SingletonUtil";
import ActorBuff from "@/ActorBuff";
import SolarBuffState from "@/SolarBuffState";
import BuffUtil from "@/BuffUtil";
import Buff from "@/Buff";
import ActorBuffUtil from "@/ActorBuffUtil";
import AttributeUtil from "@/AttributeUtil";
import FrameControl from "@/FrameControl";
import ActorFrameUtil from "@/ActorFrameUtil";
import FramePoint from "@/FramePoint";


export default class SolarActorBuffState {
    static config: {
        showSolarActorBuffUI: boolean //显示太阳buff UI
        /** setAbsPoint(FRAMEPOINT_BOTTOMLEFT, 左下角起始点 */
        buffIconUIStartX: number
        buffIconUIStartY: number
    } = {
        showSolarActorBuffUI: true,
        buffIconUIStartX: 0.37,
        buffIconUIStartY: 0.007,
    }

    /**
     * 模拟buff的 ui显示
     */
    static objectPool = new ObjectPool<FrameControl>(() => {
        let frameControl = new FrameControl();
        //
        frameControl.setSize(0.015, 0.015);
        //
        frameControl.getImageFrame();
        frameControl.getCooldownFrame();
        frameControl.getTextFrame().setFont(0.006);
        frameControl.getTextFrame().clearPoints();
        frameControl.getTextFrame().setPoint(FramePoint.bottomRight, frameControl.getRootFrame().handle, FramePoint.bottomRight, -0.0005, 0.0005)
        frameControl.getButtonFrame(true, false);
        frameControl.getButtonFrame().setOnMouseEnter(SolarActorBuffState.showUbertip)
        frameControl.getButtonFrame().setOnMouseLeave(SolarActorBuffState.hideUbertip)

        //cd
        frameControl.getCooldownFrame().setModel("solar_asset\\model\\ui_cooldown_0_015.mdx", 0)
        DzFrameSetAnimate(frameControl.getCooldownFrame().current, 0, false)
        return frameControl;
    });
    static frameBuffMap: { [frameId: string]: ActorBuff } = {}

    constructor() {
        if (SingletonUtil.notFirstTime(SolarActorBuffState)) {
            print("不能重复new SolarActorBuffState()")
            return;
        }

        //冲突检测
        if (SingletonUtil.notFirstTime(SolarBuffState)) {
            print("演员buff系统不能与旧buff系统同时使用!")
            return;
        }
        BuffUtil.registerBuffType = (buffType: AppBuffType) => {
            log.errorWithTraceBack("演员buff系统不能与旧buff系统同时使用！")
            return null;
        }
        BuffUtil.getBuffType = (buffTypeId: string) => {
            log.errorWithTraceBack("演员buff系统不能与旧buff系统同时使用！")
            return null;
        }
        BuffUtil.forAllBuffTypes = (callback: (buffType: AppBuffType) => void, buffTypeClass?: string) => {
            log.errorWithTraceBack("演员buff系统不能与旧buff系统同时使用！")
            return null;
        }
        BuffUtil.addBuff = (unit: unit, buffTypeId: string, caster?: unit, initBuff?: (buff: Buff) => void) => {
            log.errorWithTraceBack("演员buff系统不能与旧buff系统同时使用！")
            return null;
        }

        //注册任意buff层数改变事件 修改对应的属性附加值
        ActorBuffUtil.addAnyActorBuffLevelChangeListener((buff, delta) => {
            if (buff.attribute == null || buff.actorType.attribute == null) {
                return
            }
            buff.attribute = AttributeUtil.multiply(buff.actorType.attribute, buff.level)
            // BaseUtil.runLater(0.1, () => {
            //     //如果没有手动指定属性的话 则自动根据等级修改属性
            //     if (AttributeUtil.isEquals(buff.attribute, buff.actorType.attribute)) {
            //         buff.attribute = AttributeUtil.multiply(buff.actorType.attribute, buff.level)
            //     }
            // });
        });


        // buff ui显示
        if (SolarActorBuffState.config.showSolarActorBuffUI) {
            //
            let trigger = new Trigger();
            trigger.registerTimerEvent(0.1, true);
            trigger.addAction(this.refreshSolarBuffUI)
        }

    }

    static showUbertip(this: void) {
        let frameH = DzGetTriggerUIEventFrame();
        let actorBuff = SolarActorBuffState.frameBuffMap["f" + frameH];
        ActorFrameUtil.showTooltip(actorBuff);
    }

    static hideUbertip(this: void) {
        ActorFrameUtil.hideTooltip();
    }

    /**
     * 更新太阳buff
     */
    refreshSolarBuffUI(this: void) {
        let realSelectUnit = SelectUtil.getRealSelectUnit();
        if (!IsHandle(realSelectUnit)) {
            SolarActorBuffState.showBuffsUI(false);
            return;
        }


        let actorBuffs = ActorBuffUtil.getUnitActorBuffs(realSelectUnit);
        if (!actorBuffs) {
            SolarActorBuffState.showBuffsUI(false);
            return;
        }
        let objectPool = SolarActorBuffState.objectPool;
        objectPool.setAllIdleStatus(true);//设置对象池所有 ui为 空闲可使用状态
        let index = 0;
        for (let actorBuff of actorBuffs) {
            let uiShowType = actorBuff.get("uiShowType");
            if (uiShowType != null && uiShowType != "单位状态栏") {
                continue;
            } else if (actorBuff.get("class") && actorBuff.get("class") != "基础" &&
                actorBuff.get("class") != "演员buff" &&
                actorBuff.get("class") != "羁绊" &&
                uiShowType != "单位状态栏") {
                continue;//不是基础类型的其他类型则不在这里显示
            }else if (actorBuff.isHide()){
                continue
            }
            let frameControl = objectPool.borrowObject();
            frameControl.visible = true
            frameControl.getImageFrame().setTexture(actorBuff.get("icon", "ReplaceableTextures\\CommandButtons\\BTNTemp.blp"))
            frameControl.setAbsPoint(FRAMEPOINT_BOTTOMLEFT,
                SolarActorBuffState.config.buffIconUIStartX + (index * 0.016),
                SolarActorBuffState.config.buffIconUIStartY);
            //绑定ui跟 actorBuff
            SolarActorBuffState.frameBuffMap["f" + frameControl.getButtonFrame().current] = actorBuff;
            //冷却UI
            if (actorBuff.get("tag") == "光环" || actorBuff.get("dur", 0) <= 3) {
                frameControl.getCooldownFrame().visible = false
            } else {
                frameControl.getCooldownFrame().visible = true
                let cd = (actorBuff.getRemainingTime() / actorBuff.get("dur"))
                frameControl.getCooldownFrame().setAnimateOffset(cd)
            }
            if (actorBuff.level && actorBuff.level != 1) {
                frameControl.getTextFrame().setText(actorBuff.level + "")
                frameControl.getTextFrame().visible = true;
            } else {
                frameControl.getTextFrame().visible = false;
            }
            index++;
        }

        objectPool.forDirtyObjects(frameControl => {
            frameControl.visible = false;
        })


    }

    /**
     * UI显示
     */
    static showBuffsUI(show: boolean) {
        SolarActorBuffState.objectPool.forActiveObjects(frameControl => {
            frameControl.visible = show;
        });
    }


}