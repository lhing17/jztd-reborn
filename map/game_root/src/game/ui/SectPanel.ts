import {Frame} from "@/frame";
import TextAlign from "@/TextAlign";
import BaseUtil from "@/BaseUtil";
import SyncUtil from "@/SyncUtil";
import SectConfig, {SectDefinition} from "../config/SectConfig";
import SectService from "../sect/SectService";

interface SectTile {bg: Frame; icon: Frame; name: Frame; tag: Frame; button: Frame;}

/** 名录/预览只改变本机Frame；确认只发代次+门派ID，由同步服务创建建造者。 */
export default class SectPanel {
    private root: Frame;
    private tiles: SectTile[] = [];
    private buttonLabels = new Map<number, Frame>();
    private recommended = true;
    private page = 0;
    private previewId = "";
    private generation = -1;
    private pendingId = "";
    private pendingAt = 0;
    private shown = false;
    private readonly countdown: Frame;
    private readonly pageText: Frame;
    private readonly heading: Frame;
    private readonly motto: Frame;
    private readonly style: Frame;
    private readonly summary: Frame;
    private readonly lines: Frame[] = [];
    private readonly emblem: Frame;
    private readonly confirmBg: Frame;
    private readonly confirm: Frame;
    private readonly hint: Frame;
    private readonly recommendedBg: Frame;
    private readonly allBg: Frame;

    constructor(private service: SectService) {
        this.root = this.skin(undefined, .06, .525, .68, .35, "panel");
        this.text(.084, .505, .30, .024, .016).setText("|cffe6c17a拜 入 山 门|r");
        this.text(.084, .479, .35, .015, .008).setText("择一门传承，与同门共守此阵");
        this.countdown = this.text(.59, .504, .126, .022, .011);
        this.countdown.setTextAlignment(TextAlign.right);
        this.recommendedBg = this.skin(this.root.handle, .084, .456, .088, .026, "tab_selected");
        this.allBg = this.skin(this.root.handle, .18, .456, .088, .026, "tab");
        this.button(.084, .456, .088, .026, "推荐入门", () => this.filter(true));
        this.button(.18, .456, .088, .026, "全部门派", () => this.filter(false));

        // Frame坐标按4:3拉伸到窗口；只修正本机徽记宽度，避免宽屏中圆形变椭圆。
        const iconAspect = math.min(1, math.max(.5, DzGetWindowHeight() / math.max(1, DzGetWindowWidth()) * 4 / 3));

        for (let slot = 0; slot < SectConfig.pageSize; slot++) {
            const index = slot;
            const x = .084 + (slot % 4) * .09;
            const y = .418 - math.floor(slot / 4) * .063;
            const bg = this.skin(this.root.handle, x, y, .082, .055, "tile");
            const iconWidth = .028 * iconAspect;
            const icon = this.skin(bg.handle, x + (.082 - iconWidth) / 2, y - .004, iconWidth, .028, "emblem_shaolin");
            const name = this.text(x + .003, y - .033, .076, .012, .009, bg);
            const tag = this.text(x + .003, y - .045, .076, .009, .0065, bg);
            name.setTextAlignment(TextAlign.center);
            tag.setTextAlignment(TextAlign.center);
            const button = this.button(x, y, .082, .055, "", () => {
                const item = this.currentPage().items[index];
                if (item) { this.previewId = item.id; this.pendingId = ""; this.render(); }
            }, bg);
            this.tiles.push({bg, icon, name, tag, button});
        }

        this.skin(this.root.handle, .465, .456, .25, .225, "detail");
        const emblemWidth = .042 * iconAspect;
        this.emblem = this.skin(this.root.handle, .481 + (.042 - emblemWidth) / 2, .442, emblemWidth, .042, "emblem_shaolin");
        this.heading = this.text(.541, .438, .156, .024, .016);
        this.motto = this.text(.541, .410, .156, .018, .008);
        this.style = this.text(.483, .380, .214, .017, .009);
        this.summary = this.text(.483, .352, .214, .028, .0082);
        this.summary.setTextAlignment(TextAlign.topLeft);
        this.text(.483, .316, .214, .014, .008).setText("|cffe6c17a四 脉 弟 子|r");
        for (let index = 0; index < 4; index++) this.lines.push(this.text(.483, .295 - index * .014, .214, .013, .0078));
        this.confirmBg = this.skin(this.root.handle, .515, .219, .15, .029, "button");
        this.confirm = this.button(.515, .219, .15, .029, "确认入门", () => this.submit());
        this.hint = this.text(.37, .479, .346, .015, .0075);
        this.hint.setTextAlignment(TextAlign.right);
        this.skin(this.root.handle, .084, .219, .044, .029, "tab");
        this.button(.084, .219, .044, .029, "上页", () => { this.page--; this.render(); });
        this.skin(this.root.handle, .388, .219, .044, .029, "tab");
        this.button(.388, .219, .044, .029, "下页", () => { this.page++; this.render(); });
        this.pageText = this.text(.139, .219, .238, .029, .008);
        this.pageText.setTextAlignment(TextAlign.center);
        this.refresh();
        BaseUtil.onTimer(.1, () => { this.refresh(); return true; });
    }

    private currentPage() { return SectConfig.page(this.recommended, this.page); }
    private filter(recommended: boolean): void { this.recommended = recommended; this.page = 0; this.render(); }

    private render(): void {
        const page = this.currentPage();
        this.page = page.page;
        this.recommendedBg.setTexture(this.asset(this.recommended ? "tab_selected" : "tab"));
        this.allBg.setTexture(this.asset(this.recommended ? "tab" : "tab_selected"));
        this.pageText.setText(`${page.page + 1} / ${page.pages}    共 ${page.total} 门`);
        for (let slot = 0; slot < this.tiles.length; slot++) {
            const tile = this.tiles[slot];
            const item = page.items[slot];
            tile.bg.setVisible(item != null);
            if (!item) continue;
            tile.bg.setTexture(this.asset(item.id === this.previewId ? "tile_selected" : "tile"));
            tile.icon.setTexture(this.asset("emblem_" + item.emblem));
            tile.name.setText(`|cff${item.selectable ? item.accent : "888888"}${item.name}|r`);
            tile.tag.setText(item.selectable ? "|cff9eaaa9可入门|r" : "|cff888888未解锁|r");
        }
        const item = SectConfig.get(this.previewId) || page.items[0];
        if (item) this.detail(item);
        else {
            this.heading.setText("暂无门派"); this.motto.setText(""); this.style.setText(""); this.summary.setText("");
            this.emblem.setVisible(false);
            for (const line of this.lines) line.setText("");
            this.confirm.setEnabled(false);
        }
    }

    private detail(item: SectDefinition): void {
        this.previewId = item.id;
        this.emblem.setVisible(true);
        this.emblem.setTexture(this.asset("emblem_" + item.emblem));
        this.heading.setText(`|cff${item.accent}${item.name}|r`);
        this.motto.setText(`|cffb5bfb9${item.motto}|r`);
        this.style.setText(`|cff${item.accent}${item.style}|r`);
        this.summary.setText(`|cffc4ccc6${item.selectable ? item.summary : item.unlockHint}|r`);
        for (let i = 0; i < this.lines.length; i++) this.lines[i].setText(`|cffbac4bf${item.lines[i] || ""}|r`);
        this.confirmBg.setTexture(this.asset(item.selectable && this.pendingId === "" ? "button" : "button_disabled"));
        this.buttonLabels.get(this.confirm.handle)?.setText(this.pendingId !== "" ? "正在确认…" : item.selectable ? `确认加入${item.name}` : "尚未解锁");
        this.confirm.setEnabled(item.selectable && this.pendingId === "");
    }

    private submit(): void {
        const run = this.service.read(GetPlayerId(GetLocalPlayer()));
        const item = SectConfig.get(this.previewId);
        if (!run || run.chosenId !== "" || !item?.selectable || BaseUtil.getGameTime() >= run.deadline) return;
        this.pendingId = item.id;
        this.pendingAt = BaseUtil.getGameTime();
        SyncUtil.syncData(SectConfig.syncKey, `${run.lane.generation}:${item.id}`);
        this.render();
    }

    private refresh(): void {
        const run = this.service.read(GetPlayerId(GetLocalPlayer()));
        const visible = run != null && run.chosenId === "";
        if (this.shown !== visible) { this.shown = visible; this.root.setVisible(visible); }
        // 初次构造也必须隐藏观战客户端的窗口。
        if (!visible) { this.root.setVisible(false); return; }
        if (this.generation !== run.lane.generation) {
            this.generation = run.lane.generation;
            this.page = 0; this.recommended = true;
            this.previewId = SectConfig.firstAvailable()?.id || "";
            this.pendingId = "";
            this.render();
        }
        if (this.pendingId !== "" && BaseUtil.getGameTime() - this.pendingAt >= 2) { this.pendingId = ""; this.render(); }
        const remaining = math.max(0, math.ceil(run.deadline - BaseUtil.getGameTime()));
        this.countdown.setText(`|cff${remaining <= 10 ? "ff967a" : "e6c17a"}择派 ${remaining} 秒|r`);
        this.hint.setText(run.reason !== "" ? `|cffff967a${run.reason}|r` :
            "|cff9caaa6超时默认首个可选门派 · 首波固定在开局60秒|r");
    }

    private asset(name: string): string { return `war3mapImported\\jzr_sect\\${name}.tga`; }
    private skin(parent: number | undefined, x: number, y: number, w: number, h: number, name: string): Frame {
        const frame = Frame.createBackDrop(parent);
        frame.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y); frame.setSize(w, h); frame.setTexture(this.asset(name));
        DzFrameSetIgnoreTrackEvents(frame.handle, true);
        return frame;
    }
    private text(x: number, y: number, w: number, h: number, font: number, parent?: Frame): Frame {
        const frame = Frame.createTEXT((parent || this.root).handle);
        frame.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y); frame.setSize(w, h); frame.setFont(font);
        frame.setTextAlignment(TextAlign.left); DzFrameSetIgnoreTrackEvents(frame.handle, true);
        return frame;
    }
    private button(x: number, y: number, w: number, h: number, title: string, callback: () => void, parent?: Frame): Frame {
        // 不套原生TEXTBUTTON的边框/内部文字层；裸BUTTON只接收点击，独立TEXT负责排版。
        const frame = new Frame("BUTTON", undefined, (parent || this.root).handle);
        frame.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y); frame.setSize(w, h); frame.setOnClick(callback);
        if (title !== "") {
            const label = this.text(x, y, w, h, .009, frame);
            label.setTextAlignment(TextAlign.center); label.setText(title);
            this.buttonLabels.set(frame.handle, label);
        }
        return frame;
    }
}
