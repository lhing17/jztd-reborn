import {Frame} from "@/frame";
import TextAlign from "@/TextAlign";
import BaseUtil from "@/BaseUtil";
import WaveService from "../wave/WaveService";
import M1HudModel from "./M1HudModel";

/** 圆角纯黑HUD；只显示在场玩家，纹理箭头显隐独立，不依赖字体字形。 */
export default class M1Panel {
    constructor(service: WaveService, isChoosing?: (playerId: number) => boolean) {
        const header = M1Panel.panel(0.548, 0.568, 0.246, 0.024, "header");
        const title = M1Panel.text(header, 0.553, 0.563, 0.063, 0.014, 0.008);
        title.setText("|cffeee6ce决战TD·重生|r");
        const time = M1Panel.text(header, 0.618, 0.563, 0.078, 0.014, 0.008);
        const monsters = M1Panel.text(header, 0.696, 0.563, 0.075, 0.014, 0.008);
        monsters.setTextAlignment(TextAlign.right);
        const board = M1Panel.panel(0.548, 0.541, 0.246, 0.048, "players_1");
        const xs = [0.553, 0.575, 0.681, 0.757];
        const widths = [0.020, 0.104, 0.074, 0.033];
        const headings = ["ID", "玩家", "门派", "击杀"];
        const cells: Frame[][] = [];
        for (let col = 0; col < headings.length; col++) {
            const heading = M1Panel.text(board, xs[col], 0.534, widths[col], 0.013, 0.0075);
            heading.setText(`|cffbdbdbd${headings[col]}|r`);
        }
        for (let row = 0; row < 4; row++) {
            const rowCells: Frame[] = [];
            for (let col = 0; col < headings.length; col++) {
                rowCells.push(M1Panel.text(board, xs[col], 0.515 - row * 0.017,
                    widths[col], 0.014, 0.0073));
            }
            cells.push(rowCells);
        }

        const toggle = Frame.createTEXTBUTTON(header.handle);
        toggle.setSize(0.017, 0.022);
        toggle.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.775, 0.567);
        toggle.setText("");
        // 贴图直接挂在常驻信息条，按钮交互状态和表体收起都不隐藏它。
        const arrow = Frame.createBackDrop(header.handle);
        arrow.setSize(0.017, 0.022);
        arrow.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.775, 0.567);
        arrow.setTexture(M1Panel.asset("arrow_up"));
        DzFrameSetIgnoreTrackEvents(arrow.handle, true);
        let collapsed = false;
        let shownRows = -1;
        const boardVisible = () => !collapsed && shownRows > 0 &&
            !(isChoosing && isChoosing(GetPlayerId(GetLocalPlayer())));
        toggle.setOnClick(() => {
            // 本地表现：不发送玩法命令，不改变同步状态。
            collapsed = !collapsed;
            board.setVisible(boardVisible());
            arrow.setTexture(M1Panel.asset(collapsed ? "arrow_down" : "arrow_up"));
        });

        const center = M1Panel.panel(0.309, 0.598, 0.182, 0.050, "center");
        const wave = M1Panel.text(center, 0.314, 0.591, 0.172, 0.014, 0.0082);
        const countdown = M1Panel.text(center, 0.314, 0.572, 0.172, 0.018, 0.010);
        wave.setTextAlignment(TextAlign.center);
        countdown.setTextAlignment(TextAlign.center);

        const refresh = () => {
            const viewerId = GetPlayerId(GetLocalPlayer());
            const data = M1HudModel.read(service, viewerId, BaseUtil.getGameTime());
            time.setText(data.time);
            monsters.setText(`${data.monsterColor}${data.monsters}|r`);
            wave.setText(`|cffead99b${data.wave}|r`);
            countdown.setText(data.countdown);
            if (shownRows !== data.rows.length) {
                shownRows = data.rows.length;
                board.setSize(0.246, 0.031 + math.max(1, shownRows) * 0.017);
                board.setTexture(M1Panel.asset(`players_${math.max(1, shownRows)}`));
            }
            board.setVisible(boardVisible());
            for (let row = 0; row < 4; row++) {
                const item = data.rows[row];
                const values = item ? [`P${item.id + 1}`, item.name, item.sect, item.kills] : [];
                for (let col = 0; col < headings.length; col++) {
                    cells[row][col].setVisible(item != null);
                    const color = item && item.danger ? "|cffff4040" :
                        item && item.id === viewerId ? "|cffffdd80" : "|cffeeeeee";
                    cells[row][col].setText(item ? `${color}${values[col]}|r` : "");
                }
            }
        };
        refresh();
        BaseUtil.onTimer(0.25, () => { refresh(); return true; });
    }

    private static asset(name: string): string { return `war3mapImported\\jzr_ui\\${name}.tga`; }

    private static panel(x: number, y: number, width: number, height: number, skin: string): Frame {
        const bg = Frame.createBackDrop();
        // RGBA TGA的内部像素直接是(0,0,0,255)，圆角外部透明。
        bg.setTexture(M1Panel.asset(skin));
        bg.setAlpha(255);
        bg.setSize(width, height);
        bg.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y);
        DzFrameSetIgnoreTrackEvents(bg.handle, true);
        return bg;
    }

    private static text(parent: Frame, x: number, y: number, width: number, height: number, font: number): Frame {
        const text = Frame.createTEXT(parent.handle);
        text.setSize(width, height);
        text.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y);
        text.setFont(font);
        text.setTextAlignment(TextAlign.left);
        DzFrameSetIgnoreTrackEvents(text.handle, true);
        return text;
    }
}
