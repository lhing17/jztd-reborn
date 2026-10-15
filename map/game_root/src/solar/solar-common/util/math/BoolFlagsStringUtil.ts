import NumberUtil from "@/NumberUtil";

/**
 * 布尔标记数组 转精简字符串 (底层通过二进制换算)
 * 可以拿来做一些开关存档 节省底层数据存储
 * 当前配置下  3个字符可存19个布尔数组长度(19/3=6.333) 一个63位长度的字符串可以存399个布尔长度
 */
const maxBitLen = 19; //2^19= 524288
const UnsignedStringLen = 3;
const UnsignedStringRadix = 84;//84^3 = 592704
export default class BoolFlagsStringUtil {


    /**
     * @param boolFlags
     * @param index
     */
    static isTrue(boolFlags: boolean[], index: number) {
        if (boolFlags == null) {
            return false;
        }
        if (index < boolFlags.length) {
            return boolFlags[index];
        }
        return false;
    }

    /**
     * 更新布尔数组指定索引值 如长度不够会自动扩充长度
     * @param boolFlags
     * @param index
     * @param value
     */
    static updateBoolFlags(boolFlags: boolean[], index: number, value: boolean): void {
        for (let i = boolFlags.length; i < index; i++) {
            boolFlags.push(false);
        }
        boolFlags[index] = value;
    }

    /**
     * 布尔数组转精简的短字符串
     * @param boolFlags
     */
    static toBoolFlagsString(boolFlags: boolean[]): string {
        if (boolFlags == null || boolFlags.length == 0) {
            return "";
        }
        let boolFlagsString = "";

        let jz2 = "";
        for (let i = 0; i < boolFlags.length; i++) {
            //低位到高位
            jz2 = (boolFlags[i] ? "1" : "0") + jz2;
            if (jz2.length >= maxBitLen) {
                let number = tonumber(jz2, 2);
                let tempNumStrJz = NumberUtil.toUnsignedString(number, UnsignedStringRadix);
                if (tempNumStrJz.length < UnsignedStringLen) {
                    tempNumStrJz = tempNumStrJz.padStart(UnsignedStringLen, "0")
                }
                if (tempNumStrJz.length != UnsignedStringLen) {
                    log.errorWithTraceBack("错误的转换进制配置:长度超标>" + UnsignedStringLen
                        + ":二进制=" + jz2 + " 十进制=" + number + " tempNumStrJz=" + tempNumStrJz);
                }
                boolFlagsString += tempNumStrJz;
                jz2 = "";
            }
        }
        if (jz2.length > 0) {
            let number = tonumber(jz2, 2);
            let tempNumStrJz = NumberUtil.toUnsignedString(number, UnsignedStringRadix);
            if (tempNumStrJz.length < UnsignedStringLen) {
                tempNumStrJz = tempNumStrJz.padStart(UnsignedStringLen, "0")
            }
            boolFlagsString += tempNumStrJz;
        }
        return boolFlagsString;
    }

    /**
     *
     * @param boolFlagsString
     */
    static parseBoolFlags(boolFlagsString: string): boolean[] {
        if (boolFlagsString == null || boolFlagsString.length == 0) {
            return [];
        }
        if (boolFlagsString.length % UnsignedStringLen != 0) {
            log.errorWithTraceBack("错误的boolFlagsString格式")
            return [];
        }
        let boolFlags: boolean[] = [];
        for (let i = 0; i < boolFlagsString.length; i = i + UnsignedStringLen) {
            let tempNumStrJz: string = boolFlagsString.substring(i, i + UnsignedStringLen);
            let tempNum: number = NumberUtil.parseUnsignedString2Number(tempNumStrJz, UnsignedStringRadix);
            let jz2: string = tempNum.toString(2);
            for (let j = 0; j < maxBitLen; j++) {
                if (j < jz2.length) {
                    boolFlags.push(jz2.charAt(jz2.length - j - 1) == "1");
                } else {
                    boolFlags.push(false);
                }
            }
        }
        return boolFlags;
    }


}