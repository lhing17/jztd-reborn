export default class ColorUtil {

    static config = {
        red: "|cffff0303",
        blue: "|cff0042ff",
        teal: "|cff1ce6b9",
        purple: "|cff540081",
        yellow: "|cfffffc00",
        orange: "|cfffe8a0e",
        green: "|cff20c000",
        pink: "|cffe55bb0",
        gray: "|cff959697",
        lightblue: "|cff7ebff1",
        darkgreen: "|cff106246",
        brown: "|cff4a2a04",
        maroon: "|cff9b0000",
        navy: "|cff0000c3",
        turquoise: "|cff00eaff",
        violet: "|cffbe00fe",
        wheat: "|cffebcd87",
        peach: "|cfff8a48b",
        mint: "|cffbfff80",
        lavender: "|cffdcb9eb",
        coal: "|cff282828",
        snow: "|cffebf0ff",
        emerald: "|cff00781e",
        peanut: "|cffa46f33",
        sheepblue: "|CFF3F81F8",
        wolfred: "|CFFC00040",
        gold: "|CFFD9D919",
        string: "|cffce915b",
        number: "|cffdcdc8b",
        boolean: "|cff569cd6",
        white: "|cffffffff",
        handle: "|cff7ebff1",
        black: "|CFF000000",
    };


    static getColor(g: string): string {
        return ColorUtil.config[g];
    }

    /**
     * 根据rgb 获得 整数类型的颜色
     * @param r
     * @param g
     * @param b
     */
    static getColorIntByRGB(r: number, g: number, b: number): number {
        return 255 * 0x1000000 + r * 0x10000 + g * 0x100 + b
    }


    static getTextColor(text?: string): string {
        if (!text || text == '') {
            return '';
        }

        if (text == 'C') {
            return '|cff66ff00';
        }

        if (text == 'B') {
            return '|cff0042ff';
        }

        if (text == 'A') {
            return '|cffbe00fe';
        }

        if (text == 'S') {
            return '|cffff0303';
        }

        if (text == 'SS') {
            return '|cfffe8a0e';
        }

        let color = null;
        if (text.includes("红")) {
            color = ColorUtil.config.red;
        } else if (text.includes("橙")) {
            color = ColorUtil.config.orange;
        } else if (text.includes("黄")) {
            color = ColorUtil.config.yellow;
        } else if (text.includes("绿")) {
            color = ColorUtil.config.green;
        } else if (text.includes("青")) {
            color = "|cff0348B1";
        } else if (text.includes("蓝")) {
            color = ColorUtil.config.blue;
        } else if (text.includes("紫")) {
            color = ColorUtil.config.purple;
        } else if (text.includes("多彩")) {
            color = "|cffF16F21";
        }
        return color || "";
    }

    static getTextColorByNumber(key?: number): string {

        if (!key || key == 0) {
            return '|CFFFFFFFF';
        }

        if (key <= 10) {
            return '|CFF0042FF';
        }

        if (key <= 20) {
            return '|CFFBE00FE';
        }

        if (key <= 30) {
            return '|CFFFF0303';
        }

        if (key <= 40) {
            return '|CFFFE8A0E';
        }

        if (key <= 50) {
            return '|CFF000000';
        }

        return '|CFFFFFFFF';
    }

    /**
     * 自动适配颜色 返回添加颜色的字符串
     * @param text
     */
    static adaptTextColor(text: string): string {
        if (text == null) {
            return null;
        }
        //红、、黄、、、蓝、
        let color: string = ColorUtil.getTextColor(text)
        if (color != null && color.length > 5) {
            return color + text + "|r";
        }
        return text;
    }
}