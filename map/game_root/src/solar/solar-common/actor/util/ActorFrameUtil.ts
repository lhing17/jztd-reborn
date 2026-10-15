import {Frame} from "@/frame";
import Actor from "@/Actor";
import FramePoint from "@/FramePoint";
import BaseUtil from "@/BaseUtil";
import SolarConfig from "@/SolarConfig";
import TextUtil from "@/TextUtil";
import ActorItem from "@/ActorItem";
import ActorAbility from "@/ActorAbility";
import TipFrameUtil from "@/TipFrameUtil";
import SyncUtil from "@/SyncUtil";
import ActorBuff from "@/ActorBuff";
import DataBase from "@/DataBase";

declare global {
    interface TooltipInfoType {
        name?: string,
        hotKey?: string,
        icon?: string,
        describe?: string,
        requiredTip?: string,
        labelInfos?: ({ icon: string, text: string })[]
    }
}

/**
 * 演员ui相关工具
 */
export default class ActorFrameUtil {

    static _sl_tooltipFrames: {
        root: Frame,
        name: Frame,
        hotKey: Frame,
        icon: Frame,
        requiredTip: Frame,
        /**
         * 描述文本
         * 可以设置这个的绝对位置来移动提示面板
         * */
        describe: Frame,
        //属性图标标签(金币 木材 食物 / 冷却 耗蓝 杀敌 / 等级 剩余时间)
        labelIcon1: Frame;
        label1: Frame;
        labelIcon2: Frame;
        label2: Frame;
        labelIcon3: Frame;
        label3: Frame;
    };

    static showWarnText(actor: Actor, tipText: string, dur: number = 1, showPlayer?: player) {
        ActorFrameUtil.showTipText(actor, SolarConfig.defaultWarnTextColor + tipText, dur, showPlayer)
    }

    static showFailText(actor: Actor, tipText: string, dur: number = 1, showPlayer?: player) {
        ActorFrameUtil.showTipText(actor, SolarConfig.defaultFailTextColor + tipText, dur, showPlayer)
    }

    static showSuccessText(actor: Actor, tipText: string, dur: number = 1, showPlayer?: player) {
        ActorFrameUtil.showTipText(actor, SolarConfig.defaultSuccessTextColor + tipText, dur, showPlayer)
    }

    /**
     * 在UI层显示提示信息 如一些点击图标后条件不足的警告提示 优点是就在技能图标上方显示，符合玩家此时的焦点视区
     * @param actor
     * @param tipText  示例 “|cffff0000金币不足”
     * @param dur
     * @param showPlayer
     */
    static showTipText(actor: Actor, tipText: string, dur: number = 1, showPlayer?: player) {
        if (showPlayer == null && IsHandle(actor.unit)) {
            showPlayer = actor.unitOwner;
        }
        if (showPlayer != null && GetLocalPlayer() != showPlayer) {
            return
        }
        let frame = TipFrameUtil._sl_tipTextFrameObjectPool.borrowObject();
        frame.setText(tipText);
        frame.visible = true;
        DzFrameShow(frame.backdropFrame.handle, true);
        BaseUtil.runLater(0.03, (count, maxCount) => {
            let y = 0.01 + (0.002 * count)
            frame.setPoint(FramePoint.bottom, actor.getRootFrameControl().rootFrame.handle, FramePoint.top, 0, y)
        }, 30, true);
        BaseUtil.runLater(dur, () => {
            frame.visible = false;
            DzFrameShow(frame.backdropFrame.handle, false);
            TipFrameUtil._sl_tipTextFrameObjectPool.returnObject(frame);
        })

    }


    /**
     * 提示
     */
    static showTooltip(actorOrActorType: Actor | AppActorType) {
        if (actorOrActorType == null) {
            return
        }
        if (actorOrActorType instanceof Actor) {
            ActorFrameUtil.showTooltipByActor(actorOrActorType as Actor);
            return;
        } else {
            ActorFrameUtil.showTooltipByActorType(actorOrActorType as AppActorType);
            return;
        }
    }

    static showTooltipByActor(actor: Actor) {
        if (actor == null) {
            return
        }
        let info: TooltipInfoType = {
            name: actor.getName(),
            icon: actor.getIcon(),
            describe: actor.getDescribe(true),
        };
        let hotKey = actor.get("hotKey");
        if (hotKey != null && hotKey.length > 0 && actor instanceof ActorAbility && !(actor as ActorAbility).isPassive()) {
            info.hotKey = hotKey;
        }
        if (actor.isDisable() && actor.get("requiredTip") != null) {
            info.requiredTip = actor.get("requiredTip");
        }
        info.labelInfos = ActorFrameUtil.getActorLabelInfo(actor);
        ActorFrameUtil.showTooltipByInfo(info)
    }

    static showTooltipByActorType(actorType: AppActorType) {
        if (actorType == null) {
            return
        }
        let info: TooltipInfoType = {
            name: actorType.name || actorType.id,
            icon: actorType.icon,
            describe: actorType.describe,
        };
        if (!actorType.uiEnable && actorType.requiredTip != null) {
            info.requiredTip = actorType.requiredTip;
        }
        info.labelInfos = ActorFrameUtil.getActorTypeLabelInfo(actorType);
        ActorFrameUtil.showTooltipByInfo(info)
    }

    /**
     * 提示
     */

    static showTooltipByInfo(info: TooltipInfoType) {
        if (info == null) {
            return
        }
        ActorFrameUtil._sl_initTooltip();
        let tooltip = DzFrameGetTooltip();
        DzFrameClearAllPoints(tooltip);
        DzFrameSetAbsolutePoint(tooltip, FramePoint.bottomLeft, 0.81, 0);
        //

        let tooltipFrames = ActorFrameUtil._sl_tooltipFrames;

        tooltipFrames.name.setText(info.name);
        let hotKey = info.hotKey;
        if (hotKey != null) {
            tooltipFrames.hotKey.setText("(|cffeeee00" + hotKey + "|r)");
            tooltipFrames.hotKey.visible = true;
        } else {
            tooltipFrames.hotKey.visible = false;
        }
        if (info.icon) {
            tooltipFrames.icon.setTexture(info.icon);
            tooltipFrames.icon.setSize(0.03, 0.04);
            tooltipFrames.icon.visible = true;
        } else {
            tooltipFrames.icon.setSize(0.001, 0.001);
            tooltipFrames.icon.visible = false;
        }
        if (info.requiredTip != null) {
            tooltipFrames.requiredTip.setText("|cffffff00需要:|n - " + info.requiredTip);
            tooltipFrames.requiredTip.visible = true;
        } else {
            tooltipFrames.requiredTip.setText("");
            tooltipFrames.requiredTip.visible = false;
        }
        //label 1
        let labelInfos = info.labelInfos || [];
        if (labelInfos.length > 0) {
            tooltipFrames.labelIcon1.setTexture(labelInfos[0].icon);
            tooltipFrames.label1.setText(labelInfos[0].text);
            tooltipFrames.labelIcon1.visible = (labelInfos[0].icon != null && labelInfos[0].icon != "");
            tooltipFrames.label1.visible = true;
        } else {
            tooltipFrames.labelIcon1.visible = false;
            tooltipFrames.label1.visible = false;
        }
        if (labelInfos.length > 1) {
            tooltipFrames.labelIcon2.setTexture(labelInfos[1].icon);
            tooltipFrames.label2.setText(labelInfos[1].text);
            tooltipFrames.labelIcon2.visible = (labelInfos[1].icon != null && labelInfos[1].icon != "");
            tooltipFrames.label2.visible = true;
        } else {
            tooltipFrames.labelIcon2.visible = false;
            tooltipFrames.label2.visible = false;
        }
        if (labelInfos.length > 2) {
            tooltipFrames.labelIcon3.setTexture(labelInfos[2].icon);
            tooltipFrames.label3.setText(labelInfos[2].text);
            tooltipFrames.labelIcon3.visible = (labelInfos[2].icon != null && labelInfos[2].icon != "");
            tooltipFrames.label3.visible = true;
        } else {
            tooltipFrames.labelIcon3.visible = false;
            tooltipFrames.label3.visible = false;
        }
        tooltipFrames.describe.setText(info.describe);
        //
        if (SolarConfig.defaultTooltipFrameAbsY != 0) {
            tooltipFrames.describe.clearPoints();
            tooltipFrames.describe.setAbsPoint(FramePoint.bottomRight, SolarConfig.defaultTooltipFrameAbsX, SolarConfig.defaultTooltipFrameAbsY);
        }
        tooltipFrames.root.visible = true;
    }

    /**
     * 获取演员的标签栏信息
     * @param actor
     */
    static getActorLabelInfo(actor: Actor): ({ icon: string, text: string })[] {
        let labelInfo: { icon: string, text: string }[] = []
        //label 1
        let goldCost = actor.get("goldCost");
        if (actor.get("tooltipLabel1")) {
            labelInfo.push({
                icon: actor.get("tooltipLabelIcon1") || SolarConfig.defaultResourceGoldPath,
                text: actor.get("tooltipLabel1"),
            })
        } else if (goldCost && goldCost > 0) {
            let text = null;
            if (actor instanceof ActorItem) {
                text = TextUtil.toCnUnit((actor as ActorItem).getPawnGold());
            } else {
                text = TextUtil.toCnUnit(goldCost);
                let playerState = GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_GOLD);
                text += playerState >= goldCost ? SolarConfig.defaultSuccessTextColor : SolarConfig.defaultFailTextColor;
                text += " 【已拥有:" + TextUtil.toCnUnit(playerState) + "】|r";
            }
            labelInfo.push({
                icon: SolarConfig.defaultResourceGoldPath,
                text,
            })
        } else if (actor instanceof ActorAbility) {
            if (!(actor as ActorAbility).isPassive() && actor.get("maxCd") != null && actor.get("maxCd") > 2) {
                labelInfo.push({
                    // icon: "UI\\Glues\\SinglePlayer\\NightElfCampaign3D\\MoonCrescentGlow.blp",
                    icon: "UI\\Widgets\\ToolTips\\Human\\ToolTipStonesIcon.blp",
                    text: TextUtil.secondsToHMS(actor.get("maxCd")),
                })
            }
        } else if (actor instanceof ActorBuff) {
            if (actor.level && actor.level != 1) {
                labelInfo.push({
                    icon: "UI\\Widgets\\EscMenu\\Orc\\orc-slider-knob.blp",
                    text: "Lv." + actor.level,
                });
            }
        }
        //label 2
        let lumberCost = actor.get("lumberCost");
        if (actor.get("tooltipLabel2")) {
            labelInfo.push({
                icon: actor.get("tooltipLabelIcon2") || SolarConfig.defaultResourceLumberPath,
                text: actor.get("tooltipLabel2"),
            })
        } else if (lumberCost && lumberCost > 0) {
            let text = null;
            if (actor instanceof ActorItem) {
                text = TextUtil.toCnUnit((actor as ActorItem).getPawnLumber());
            } else {
                text = TextUtil.toCnUnit(lumberCost);
                let playerState = GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_LUMBER);
                text += playerState >= lumberCost ? SolarConfig.defaultSuccessTextColor : SolarConfig.defaultFailTextColor;
                text += " 【已拥有:" + TextUtil.toCnUnit(playerState) + "】|r";
            }
            labelInfo.push({
                icon: SolarConfig.defaultResourceLumberPath,
                text,
            });
        } else if (actor.get("manaCost") != null && actor.get("manaCost") > 0) {
            labelInfo.push({
                // icon: "UI\\Feedback\\Resources\\ResourceManaStone.blp",
                icon: "UI\\Widgets\\ToolTips\\Human\\ToolTipManaIcon.blp",
                text: actor.get("manaCost") + "魔法",
            });
        } else if (actor instanceof ActorBuff) {
            if (actor.get("tag") != "光环" && actor.get("dur", 0) > 3) {
                labelInfo.push({
                    icon: "UI\\Widgets\\BattleNet\\bnet-tournament-clock.blp",
                    text: TextUtil.secondsToHMS(Math.ceil(actor.getRemainingTime())),
                });
            }
        }
        //label 3
        let foodCost = actor.get("foodCost");
        if (actor.get("tooltipLabel3")) {
            labelInfo.push({
                icon: actor.get("tooltipLabelIcon3") || "UI\\Feedback\\Resources\\ResourceUndead.blp",
                text: actor.get("tooltipLabel3"),
            })
        } else if (foodCost && foodCost > 0) {
            labelInfo.push({
                // icon: "UI\\Feedback\\Resources\\ResourceSupply.blp",
                icon: "UI\\Widgets\\ToolTips\\Human\\ToolTipSupplyIcon.blp",
                text: foodCost + "",
            })
        } else if (actor.get("killsCost") != null && actor.get("killsCost") > 0) {
            let text = actor.get("killsCost") + "杀敌数";
            let playerState = null;
            if (functions.获取玩家杀敌数) {
                playerState = functions.获取玩家杀敌数(GetLocalPlayer());
            } else {
                playerState = DataBase.getPlayerSolarData(GetLocalPlayer(), false)?.killCount;
            }
            if (playerState && playerState > 0) {
                text += playerState >= actor.get("killsCost") ? SolarConfig.defaultSuccessTextColor : SolarConfig.defaultFailTextColor;
                text += " 【已拥有:" + TextUtil.toCnUnit(playerState) + "】|r";
            }
            labelInfo.push({
                icon: "UI\\Feedback\\Resources\\ResourceUndead.blp",
                text: text,
            })
        }
        return labelInfo
    }

    /**
     * 获取演员类型标签提示信息
     * @param actorType
     */
    static getActorTypeLabelInfo(actorType: AppActorType): ({ icon: string, text: string })[] {
        let labelInfos: ({ icon: string, text: string })[] = []
        if (actorType.goldCost && actorType.goldCost != 0) {
            labelInfos.push({
                icon: SolarConfig.defaultResourceGoldPath,
                text: actorType.goldCost + "",
            })
        }
        if (actorType.lumberCost && actorType.lumberCost != 0) {
            labelInfos.push({
                icon: SolarConfig.defaultResourceLumberPath,
                text: actorType.lumberCost + "",
            })
        }
        if (actorType.foodCost && actorType.foodCost != 0) {
            labelInfos.push({
                icon: SolarConfig.defaultResourceSupplyPath,
                text: actorType.foodCost + "",
            });
        }
        return labelInfos;
    }


    static hideTooltip() {
        if (ActorFrameUtil._sl_tooltipFrames != null) {
            ActorFrameUtil._sl_tooltipFrames.root.visible = false;
        }
        let tooltip = DzFrameGetTooltip();
        DzFrameClearAllPoints(tooltip);
        DzFrameSetAbsolutePoint(tooltip, FramePoint.bottomRight, SolarConfig.defaultTooltipFrameAbsX + 0.01, SolarConfig.defaultTooltipFrameAbsY - 0.01);
    }

    private static _sl_initTooltip() {
        //只初始化一次
        if (ActorFrameUtil._sl_tooltipFrames != null) {
            return
        }
        //
        let root = new Frame("BACKDROP", null, DzGetGameUI(), "_sl_border_backdrop", 0)
        const gap = 0.008;
        // const fontSize = 0.0113;
        const fontSize = 0.0110;
        //提示从下往上扩充显示范围
        let describe = Frame.createTEXT(root.handle)
        describe.setFont(fontSize)
        DzFrameSetSize(describe.handle, 0.2, -1);
        //
        let requiredTip = Frame.createTEXT(root.handle)
        requiredTip.setPoint(FramePoint.bottomLeft, describe.handle, FramePoint.topLeft, 0, gap);
        DzFrameSetSize(requiredTip.handle, 0.2, -1);
        //
        let icon = Frame.createBackDrop(root.handle)
        icon.setSize(0.03, 0.04)
        icon.setPoint(FramePoint.bottomLeft, requiredTip.handle, FramePoint.topLeft, 0, gap);

        let name = Frame.createTEXT(root.handle)
        name.setFont(fontSize)
        name.setPoint(FramePoint.topLeft, icon.handle, FramePoint.topRight, gap, 0);

        let hotKey = Frame.createTEXT(root.handle)
        hotKey.setFont(fontSize)
        hotKey.setPoint(FramePoint.left, name.handle, FramePoint.right, 0.001, 0);


        //one case
        let labelIcon1 = Frame.createBackDrop(root.handle)
        let label1 = Frame.createTEXT(root.handle)
        label1.setFont(fontSize)
        labelIcon1.setSize(0.009, 0.012)
        labelIcon1.setPoint(FramePoint.topLeft, name.handle, FramePoint.bottomLeft, 0, -gap);
        label1.setPoint(FramePoint.left, labelIcon1.handle, FramePoint.right, 0.002, 0);
        //one case
        let labelIcon2 = Frame.createBackDrop(root.handle)
        let label2 = Frame.createTEXT(root.handle)
        label2.setFont(fontSize)
        labelIcon2.setSize(0.009, 0.012)
        labelIcon2.setPoint(FramePoint.left, label1.handle, FramePoint.right, gap, 0);
        label2.setPoint(FramePoint.left, labelIcon2.handle, FramePoint.right, 0.002, 0);
        //one case
        let labelIcon3 = Frame.createBackDrop(root.handle)
        let label3 = Frame.createTEXT(root.handle)
        label3.setFont(fontSize)
        labelIcon3.setSize(0.009, 0.012)
        labelIcon3.setPoint(FramePoint.left, label2.handle, FramePoint.right, gap, 0);
        label3.setPoint(FramePoint.left, labelIcon3.handle, FramePoint.right, 0.002, 0);


        //
        DzFrameSetPoint(root.handle, FRAMEPOINT_TOPLEFT, icon.handle, FRAMEPOINT_TOPLEFT, -gap, gap);
        DzFrameSetPoint(root.handle, FRAMEPOINT_BOTTOMRIGHT, describe.handle, FRAMEPOINT_BOTTOMRIGHT, gap, -gap);


        describe.setAbsPoint(FramePoint.bottomRight, SolarConfig.defaultTooltipFrameAbsX, SolarConfig.defaultTooltipFrameAbsY)
        //
        ActorFrameUtil._sl_tooltipFrames = {
            root: root,
            name: name,
            hotKey: hotKey,
            icon: icon,
            requiredTip: requiredTip,
            describe: describe,
            labelIcon1,
            label1,
            labelIcon2,
            label2,
            labelIcon3,
            label3
        };
    }


    static localClickActorType(actorType: AppActorType, btn: number, x: number, y: number): boolean {
        isAsync = true;
        let b = actorType.onLocalClick?.(null, btn, x, y, actorType);
        isAsync = false;
        if (b == false) {
            return false;
        }
        //同步点击
        if (actorType.onClick != null) {
            SyncUtil.syncObjData("_sl_:at:onClick", {
                i: actorType.id,
                b: btn,
            });
        }
        return true;
    }


}