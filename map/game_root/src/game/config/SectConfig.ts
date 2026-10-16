export interface SectDefinition {
    id: string;
    name: string;
    motto: string;
    style: string;
    summary: string;
    lines: string[];
    accent: string;
    color: number[];
    recommended: boolean;
    selectable: boolean;
    unlockHint: string;
    emblem: string;
}

/** 门派名录按配置扩展；当前三派开放，建造者暂用不同光色的原生小精灵。 */
export default class SectConfig {
    static readonly selectionSeconds = 40;
    static readonly pageSize = 12;
    static readonly syncKey = "jzr_sect";
    static readonly entries: SectDefinition[] = [
        {id: "shaolin", name: "少林", motto: "厚土镇山 · 金刚护阵", style: "阻挡 / 反震 / 聚怪",
            summary: "以坚实前阵稳住战线，聚拢来敌，再以刚猛攻势破阵。",
            lines: ["镇山  棍僧：前阵阻挡", "惊鸿  拳僧：单体破甲", "覆雨  铲僧：震地清群", "回春  禅僧：内力辅助"],
            accent: "e6c17a", color: [255, 210, 115], recommended: true, selectable: true, unlockHint: "", emblem: "shaolin"},
        {id: "wudang", name: "武当", motto: "清风御剑 · 以柔克刚", style: "控制 / 牵制 / 持续输出",
            summary: "借剑势与阵法牵制敌人，在从容周旋中积蓄攻势。",
            lines: ["镇山  前阵弟子", "惊鸿  单体弟子", "覆雨  范围弟子", "回春  辅助弟子"],
            accent: "91cfd2", color: [120, 215, 255], recommended: true, selectable: true, unlockHint: "", emblem: "wudang"},
        {id: "emei", name: "峨眉", motto: "灵心照月 · 百花同阵", style: "治疗 / 增益 / 协同作战",
            summary: "以治疗与增益守护同门，让弟子配合成为稳固战力。",
            lines: ["镇山  前阵弟子", "惊鸿  单体弟子", "覆雨  范围弟子", "回春  辅助弟子"],
            accent: "dcb1cd", color: [235, 165, 225], recommended: true, selectable: true, unlockHint: "", emblem: "emei"},
    ];

    static get(id: string): SectDefinition | undefined { return SectConfig.entries.find(item => item.id === id); }
    static firstAvailable(): SectDefinition | undefined { return SectConfig.entries.find(item => item.selectable); }
    static page(recommended: boolean, requestedPage: number): {items: SectDefinition[]; page: number; pages: number; total: number} {
        const entries = SectConfig.entries.filter(item => !recommended || item.recommended);
        const pages = math.max(1, math.ceil(entries.length / SectConfig.pageSize));
        const page = math.max(0, math.min(pages - 1, requestedPage));
        return {items: entries.slice(page * SectConfig.pageSize, (page + 1) * SectConfig.pageSize), page, pages, total: entries.length};
    }
}
