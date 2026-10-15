import FrameCallbackUtil from "@/FrameCallbackUtil";
import ActorItemUtil from "@/ActorItemUtil";
import AbilityButtonUtil from "@/AbilityButtonUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import {Frame} from "@/frame";
import ActorUnit from "@/ActorUnit";
import CameraUtil from "@/CameraUtil";
import FramePoint from "@/FramePoint";
import SingletonUtil from "@/SingletonUtil";
import GameUtil from "@/GameUtil";
import ActorFrameUtil from "@/ActorFrameUtil";
import FrameControl from "@/FrameControl";
import InputUtil from "@/InputUtil";
import Actor from "@/Actor";
import ActorAbility from "@/ActorAbility";
import ActorItem from "@/ActorItem";
import MessageUtil from "@/MessageUtil";
import NativeFrameUtil from "@/NativeFrameUtil";
import ActorUnitUtil from "@/ActorUnitUtil";
import ActorTypeBuildUtil from "@/ActorTypeBuildUtil";
import ObjectDataUtil from "@/ObjectDataUtil";
import STimer from "@/STimer";
import BaseUtil from "@/BaseUtil";

export default class SolarActorFrameState {

    /** 鼠标所在技能  (切换选择单位时会自动切换鼠标指向的技能) */
        //切换单位会触发技能Frame进入离开事件
        // 某些特殊情况下鼠标不在技能位置 SolarActorFrameState.mouseFocusActor也有值（猜测为某些极端情况下鼠标移出技能按钮 但未触发Frame的离开事件）
    static mouseFocusActor: Actor = null;
    /** 鼠标所在物品序号 (每次使用需实时从选择的单位获得此序号对应的物品才行，因为切换单位不会触发物品Frame进入离开事件) */
    static _sl_mouseFocusItemIndex: number = -1;
    static commandBarButtonActorFrames: { [i: number]: FrameControl } = {};
    static itemBarButtonActorFrames: { [i: number]: FrameControl } = {};
    /** 显示提示时 不停的刷新提示 以支持提示实时修改后显示 */
    private static _sl_updateActorFrameTooltipTimer: STimer = null;

    constructor() {
        if (SingletonUtil.notFirstTime(SolarActorFrameState)) {
            print("不能重复new SolarActorFrameState()")
            return;
        }
        if (DzFrameGetCommandBarButton == null) {
            print("没有DzFrameGetCommandBarButton函数。未启动SolarActorFrameState!")
            return
        }
        //解决框选单位时名字会闪一下的问题 以及技能暗图标闪一下 。这个事件比帧回调要实时一点 帧回调选择单位后可能依旧有16毫秒的延迟
        if (isEmbedJapi) {
            MessageUtil.addHookEventCallBack("select_unit", e => {
                //add
                if (IsHandle(e.unit)) {
                    let unitName = NativeFrameUtil.getUnitName();
                    let un = ActorUnitUtil.getUnitName(e.unit);
                    //fix 技能暗图标闪一下
                    DzFrameSetText(unitName, un);
                }
                //fix 技能暗图标闪一下
                SolarActorFrameState.updateAbilityFrame();
                return true;
            })
        }

        FrameCallbackUtil.addFrameSetUpdateCallback(() => {
            SolarActorFrameState.updateItemFrame();
            SolarActorFrameState.updateAbilityFrame();
            SolarActorFrameState.updateUnitFrame();
        });
        //模拟右键事件  左键在message.hook里 那里可以拦截。右键点击是模拟的 不能拦截
        InputUtil.onMouseRightButtonReleased(() => {
            if (SolarActorFrameState.mouseFocusActor) {
                if (SolarActorFrameState.mouseFocusActor.isDisable() ||
                    SolarActorFrameState.mouseFocusActor.isHide()) {
                    return;
                }
                SolarActorFrameState.mouseFocusActor.localClick(2, 0, 0);
            }
        });
        if (isEmbedJapi) {
            //内置才有的效果
            MessageUtil.addWindowEventCallBack(eventId => {
                if (eventId == 1) {//鼠标按下
                    let actor: Actor = SolarActorFrameState.mouseFocusActor;
                    if (actor == null) {
                        //物品 暂时不要忽略 以免无法移到 对物品使用时也不行 todo
                        // actor = SolarActorFrameState.getMouseFocusItem();
                    }
                    /** 针对被动技能的本地点击拦截 */
                    if (actor != null && actor instanceof ActorAbility) {
                        if ((actor as ActorAbility).isPassive() || actor.isDisable() || actor.isHide()) {
                            //再从位置判断一下 以免拦截到不该拦截的情况。 某些情况下鼠标不在技能位置 SolarActorFrameState.mouseFocusActor也有值
                            let sceneX = InputUtil.getMouseSceneX()
                            let sceneY = InputUtil.getMouseSceneY()
                            let xyObj = AbilityButtonUtil.getPosBySceneXY(sceneX, sceneY);
                            if (xyObj != null) {
                                return true
                            }
                        }
                    }
                }
                //返回fasle 表示不拦截
                return false
            });


        }


        /**
         * 技能移入移出
         */
        let lastMouseEnterCmdButtonX = 0;
        let lastMouseEnterCmdButtonY = 0;
        let onAbilityCmdButtonFrameMouseLeaveCallBack = () => {
            //说明是鼠标移出了按钮区 需要隐藏提示。否则可能是换了选择单位直接用OnMouseEnter的显示提示来更新即可 以免编队狂按时原生提示闪现一下
            //(用此方法只有第一次按编队会只闪一次 后续再按不会闪了)
            //按编队选单位时 触发2次离开按钮进入按钮时间 中间间隔100ms
            if (DzGetMouseX() != lastMouseEnterCmdButtonX || DzGetMouseY() != lastMouseEnterCmdButtonY) {
                SolarActorFrameState.hideTooltip();
            }
        }
        for (let x = 0; x <= 3; x++) {
            for (let y = 0; y <= 2; y++) {
                let cmdButton = DzFrameGetCommandBarButton(y, x);
                let cmdButtonFrame = Frame.fromHandle(cmdButton);
                const fx = x;
                const fy = y;
                cmdButtonFrame.addOnMouseEnter(() => {
                    SolarActorFrameState.showCommandBarButtonActorTooltip(fx, fy);
                    lastMouseEnterCmdButtonX = DzGetMouseX();
                    lastMouseEnterCmdButtonY = DzGetMouseY();
                })
                cmdButtonFrame.addOnMouseLeave(onAbilityCmdButtonFrameMouseLeaveCallBack);
            }
        }
        /**
         * 物品移入移出
         */
        for (let i = 0; i < 6; i++) {
            let cmdButton = DzFrameGetItemBarButton(i);
            let cmdButtonFrame = Frame.fromHandle(cmdButton);
            const fi = i;
            cmdButtonFrame.addOnMouseEnter(() => {
                SolarActorFrameState.showItemTooltip(fi)
            })
            cmdButtonFrame.addOnMouseLeave(SolarActorFrameState.hideTooltip)
        }

        se.onUnitSelected(e => {
            if (SolarActorFrameState._sl_mouseFocusItemIndex >= 0) {
                SolarActorFrameState.showItemTooltip(SolarActorFrameState._sl_mouseFocusItemIndex)
            }
        });
        se.on("刷新UI", () => {
            if (SolarActorFrameState._sl_mouseFocusItemIndex >= 0) {
                SolarActorFrameState.showItemTooltip(SolarActorFrameState._sl_mouseFocusItemIndex)
            } else if (SolarActorFrameState.mouseFocusActor != null) {
                ActorFrameUtil.showTooltip(SolarActorFrameState.mouseFocusActor);
            }
        });

    }

    static getMouseFocusItem(): ActorItem {
        if (SolarActorFrameState._sl_mouseFocusItemIndex < 0) {
            return null;
        }
        let u = selection();
        if (!IsHandle(u)) {
            return null;
        }
        let item = UnitItemInSlot(u, SolarActorFrameState._sl_mouseFocusItemIndex);
        return ActorItemUtil.getActorItem(item);
    }


    static showItemTooltip(this: void, i: number) {
        let u = selection();
        if (!IsHandle(u)) {
            return
        }
        SolarActorFrameState._sl_mouseFocusItemIndex = i;
        let item = UnitItemInSlot(u, i);
        //原生在商店看选择单位的物品 是只能看到物品的名字的 没有详细描述
        if (!IsHandle(item) && GetStoreTarget) {
            let storeTarget = GetStoreTarget(u, GetLocalPlayer());
            if (IsHandle(storeTarget)) {
                item = UnitItemInSlot(storeTarget, i);
            }
        }
        let actorItem = ActorItemUtil.getActorItem(item);
        if (actorItem != null) {
            ActorFrameUtil.showTooltip(actorItem);
            SolarActorFrameState._sl_startUpdateActorFrameTooltipTimer(actorItem);
        }
    }

    static showCommandBarButtonActorTooltip(this: void, x: number, y: number) {
        let [ability, order, arg] = button(x, y);
        if (ability == null || ability == 0) {
            return
        }
        //1096114805 = "AUbu" 不死族召唤建筑
        if ((1096114805 == ability || 1095262837 == ability) && arg == 8) {
            //走单位提示
            let unitIdStr = id2string(order);
            let zwActorType = ActorTypeBuildUtil.zwId2UnitIdMap[unitIdStr];
            if (zwActorType == null) {
                return;
            }
            let info: TooltipInfoType = {
                name: zwActorType.name || zwActorType.id,
                icon: zwActorType.icon,
                describe: zwActorType.describe,
            };
            // let hotKey = zwActorType.hotKey;
            let hotKey = ObjectDataUtil.getUnitDataString(unitIdStr, "Hotkey");
            if (hotKey != null && hotKey.length > 0) {
                info.hotKey = hotKey;
            }
            if (zwActorType.requiredTip != null && ActorTypeBuildUtil.isLocalPlayerActorUnitTypeDisableState(zwActorType.id)) {
                info.requiredTip = zwActorType.requiredTip;
            }
            info.labelInfos = ActorFrameUtil.getActorTypeLabelInfo(zwActorType)
            ActorFrameUtil.showTooltipByInfo(info);
            return;
        } else {
            SolarActorFrameState.showAbilityTooltip(ability);
        }
    }

    static showAbilityTooltip(this: void, ability: number) {
        let abilityIdStr = id2string(ability);
        let actorAbility = ActorAbilityUtil.getActorAbilityByBaseId(abilityIdStr, selection());
        if (actorAbility == null) {
            return;
        }
        SolarActorFrameState._sl_mouseFocusItemIndex = -1;
        SolarActorFrameState.mouseFocusActor = actorAbility;
        ActorFrameUtil.showTooltip(actorAbility);
        SolarActorFrameState._sl_startUpdateActorFrameTooltipTimer(actorAbility);
    }

    static hideTooltip(this: void) {
        ActorFrameUtil.hideTooltip();
        SolarActorFrameState.mouseFocusActor = null;
        if (SolarActorFrameState._sl_updateActorFrameTooltipTimer) {
            SolarActorFrameState._sl_updateActorFrameTooltipTimer.destroy();
            SolarActorFrameState._sl_updateActorFrameTooltipTimer = null;
        }
        SolarActorFrameState._sl_mouseFocusItemIndex = -1;
    }

    private static _sl_startUpdateActorFrameTooltipTimer(showTooltipActor: Actor) {
        if (SolarActorFrameState._sl_updateActorFrameTooltipTimer) {
            SolarActorFrameState._sl_updateActorFrameTooltipTimer.destroy();
            SolarActorFrameState._sl_updateActorFrameTooltipTimer = null;
        }
        if (showTooltipActor == null) {
            return;
        }
        SolarActorFrameState._sl_updateActorFrameTooltipTimer = BaseUtil.onTimer(1, () => {
            ActorFrameUtil.showTooltip(showTooltipActor);
            return true;
        });
    }


    static updateItemFrame() {
        //物品栏
        let unit = selection();
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            let actorItem = ActorItemUtil.getActorItem(item);
            if (actorItem == null) {
                if (SolarActorFrameState.itemBarButtonActorFrames[i]) {
                    SolarActorFrameState.itemBarButtonActorFrames[i].rootFrame.visible = false;
                    SolarActorFrameState.itemBarButtonActorFrames[i] = null;
                }
            } else {
                let buttonFrame = DzFrameGetItemBarButton(i);
                //
                let frame = actorItem.getRootFrameControl(false);
                if (frame != SolarActorFrameState.itemBarButtonActorFrames[i]) {
                    if (SolarActorFrameState.itemBarButtonActorFrames[i]) {
                        SolarActorFrameState.itemBarButtonActorFrames[i].rootFrame.visible = false;
                        SolarActorFrameState.itemBarButtonActorFrames[i] = null;
                    }
                    if (frame) {
                        frame.rootFrame.clearPoints();
                        frame.rootFrame.setAllPoints(buttonFrame);
                        frame.rootFrame.visible = true;
                    }
                    SolarActorFrameState.itemBarButtonActorFrames[i] = frame
                }
            }
        }

    }

    static updateAbilityFrame() {
        //技能
        for (let i = 1; i <= 12; i++) {
            let pos = AbilityButtonUtil.getPosByNumber(i);
            let [button_abilityId, orderID, orderType] = button(pos.x, pos.y);
            if (button_abilityId == null || button_abilityId == 0) {
                if (SolarActorFrameState.commandBarButtonActorFrames[i]) {
                    SolarActorFrameState.commandBarButtonActorFrames[i].rootFrame.visible = false;
                    SolarActorFrameState.commandBarButtonActorFrames[i] = null;
                }
                continue
            }
            let actorAbility = ActorAbilityUtil.getActorAbilityByBaseId(id2string(button_abilityId), selection());
            if (actorAbility == null) {
                if (SolarActorFrameState.commandBarButtonActorFrames[i]) {
                    SolarActorFrameState.commandBarButtonActorFrames[i].rootFrame.visible = false;
                    SolarActorFrameState.commandBarButtonActorFrames[i] = null;
                }
            } else {
                let buttonFrame = DzFrameGetCommandBarButton(pos.y, pos.x);
                //
                let frame = actorAbility.getRootFrameControl(false);
                if (frame != SolarActorFrameState.commandBarButtonActorFrames[i]) {
                    if (SolarActorFrameState.commandBarButtonActorFrames[i]) {
                        SolarActorFrameState.commandBarButtonActorFrames[i].rootFrame.visible = false;
                        SolarActorFrameState.commandBarButtonActorFrames[i] = null;
                    }
                    if (frame) {
                        frame.rootFrame.clearPoints();
                        frame.rootFrame.setAllPoints(buttonFrame);
                        frame.rootFrame.visible = true;
                    }
                    SolarActorFrameState.commandBarButtonActorFrames[i] = frame
                }
            }
        }
    }


    static updateUnitFrame() {
        //名字
        if (isEmbedJapi == false) {
            let unit = selection();
            if (IsHandle(unit)) {
                ActorUnitUtil.ifHasActorUnit(unit, (actor) => {
                    let simpleNameFrame = NativeFrameUtil.getUnitName();
                    DzFrameSetText(simpleNameFrame, actor.getName());
                });
            }
        }

        //头上血条 或ui图标
        for (let actorUuid in ActorUnit._sl_hasFrameActorUnits) {
            let actorUnit = ActorUnit._sl_hasFrameActorUnits[actorUuid];
            if (actorUnit == null || actorUnit.isDestroyed()) {
                continue;
            }
            let rootFrame = actorUnit.getRootFrameControl(false);
            if (rootFrame == null) {
                return;
            }
            if (!UnitAlive(actorUnit.unit)) {
                rootFrame.rootFrame.visible = false;
                continue
            }
            let x = actorUnit.unitX;
            let y = actorUnit.unitY
            let z = GameUtil.getTerrainHeight(x, y);
            if (unit_overhead) {
                z = z + unit_overhead(actorUnit.unit) - 50;
            } else {
                z = z + 150;
            }

            let scoordinates = CameraUtil.getScreenCoordinates(x, y, z);
            if (scoordinates.x <= 0 || scoordinates.x >= 0.8) {
                rootFrame.rootFrame.visible = false;
                continue
            }
            if (scoordinates.y <= 0.13 || scoordinates.y >= 0.56) {
                rootFrame.rootFrame.visible = false;
                continue
            }
            rootFrame.rootFrame.setAbsPoint(FramePoint.bottom, scoordinates.x, scoordinates.y);
            rootFrame.rootFrame.visible = true;
        }

    }


}