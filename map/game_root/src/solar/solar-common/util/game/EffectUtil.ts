import TargetAttach from "@/TargetAttach";
import BaseUtil from "@/BaseUtil";
import HandleUtil from "@/HandleUtil";

const japi: NoSelf & any = require('jass.japi')

export default class EffectUtil {


    /**
     * 新建特效(创建到坐标)
     */
    static addSpecialEffect(modelName: string, x: number, y: number, size?: number, displayPlayer?: player): effect {
        if (displayPlayer == null) {//没有指定显示玩家
            //判断游戏设置 是否关闭了特效显示
            if (settings.isEffectDisplay == false) {
                return AddSpecialEffect("", x, y)
            } else {
                let e = AddSpecialEffect(modelName, x, y)
                if (size != null) {
                    EffectUtil.setEffectSize(e, size, modelName);
                }
                return e;
            }
        } else {//指定了显示玩家
            //判断游戏设置 是否关闭了特效显示
            if (displayPlayer == GetLocalPlayer()) {
                let e = AddSpecialEffect(modelName, x, y)
                if (size != null) {
                    EffectUtil.setEffectSize(e, size, modelName);
                }
                return e;
            } else {
                return AddSpecialEffect("", x, y)
            }
        }
    }

    /**
     * 新建特效(创建到坐标) 并且销毁它 (显示其动画)
     */
    static addSpecialEffectAndDestroy(modelName: string, x: number, y: number, size?: number, lifeTime?: number): void {
        let effect = EffectUtil.addSpecialEffect(modelName, x, y, size);
        if (lifeTime == null || lifeTime == 0) {
            DestroyEffect(effect);
        } else {
            BaseUtil.runLater(lifeTime, () => {
                DestroyEffect(effect);
            })
        }
    }

    /**
     * 新建特效(创建到单位)
     * @param modelName 模型路径
     * @param targetWidget 单位
     * @param attachPointName 附加点
     * @param size 大小缩放
     */
    static addSpecialEffectTarget(modelName: string, targetWidget: widget, attachPointName: string = TargetAttach.origin, size?: number): effect {
        if (settings.isEffectDisplay == false) {
            return AddSpecialEffectTarget("", targetWidget, attachPointName)
        } else {
            let e = AddSpecialEffectTarget(modelName, targetWidget, attachPointName)
            if (size != null) {
                EffectUtil.setEffectSize(e, size, modelName);
            }
            return e;
        }
    }

    /**
     * 新建特效(创建到单位) 并且销毁它 (显示其动画)
     */
    static addSpecialEffectTargetAndDestroy(modelName: string, targetWidget: widget, attachPointName: string = TargetAttach.origin,
                                            size?: number, lifeTime?: number): void {
        let effect = EffectUtil.addSpecialEffectTarget(modelName, targetWidget, attachPointName, size);
        if (lifeTime == null || lifeTime == 0) {
            DestroyEffect(effect);
        } else {
            BaseUtil.runLater(lifeTime, () => {
                DestroyEffect(effect);
            })
        }
    }


    /**
     * 设置特效朝向 注意会清空旋转旧值
     * @param effect
     * @param facingAngle
     */
    static setEffectFacing(effect: effect, facingAngle: number) {
        EXEffectMatReset(effect)
        EXEffectMatRotateZ(effect, facingAngle)
    }

    /**
     * 销毁点特效 不显示死亡动画 (目前通过缩放并 移动到地面以下来实现)
     * @param effect
     */
    static destroyEffectNoDeathAnim(effect: effect) {
        if (isDebug){
            if (!HandleUtil.isHandleType(effect,"+EIP")){
                log.errorWithTraceBack("当前特效不是点特效，请不要使用过时的handle。如果是绑定到单位的特效请手动使用DestroyEffect销毁!")
            }
        }
        EXSetEffectSize(effect, 0)
        // SetPariticle2Size?.(effect, 0)
        //绑定到单位的特效 如果单位移除后 调用EXSetEffectZ设置这个特效会导致崩溃
        EXSetEffectZ(effect, -5000)
        DestroyEffect(effect)
    }


    /**
     * 设置模型的大小
     * @param e
     * @param size
     * @param modlePath
     */
    static setEffectSize(e: effect, size: number, modlePath?: string) {
        EXSetEffectSize(e, size);
        try {
            japi.SetPariticle2Size?.(e, size);
        } catch (e) {
            print(tostring(e))
            print("SetPariticle2Size不支持此模型。pariticle=" + tostring(e) +
                " size=" + tostring(size) + " modlePath=" + tostring(modlePath))
        }
    }


}