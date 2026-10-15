/**
 * FourCC
 * FourCC全称Four-Character Codes，代表四字符代码 (four character code), 它是一个32位的标示符
 * 此类可将4字符的字符串转换为整数
 * 以及将整数转换为4个字符的字符串
 */
export default class SolarFourCC {
    static ids1: any = {}
    static ids2: any = {}

    static _id(a: number) {
        // @ts-ignore
        let r = '>I4'.pack(a);
        this.ids1[a] = r
        this.ids2[r] = a
        return r
    }

    static id2string(this: void, a: number) {
        let str = SolarFourCC.ids1[a];
        if (str) {
            return str;
        }
        return SolarFourCC._id(a)
    }

    static __id2(a: string) {
        // @ts-ignore
        let r = ('>I4').unpack(a)
        this.ids2[a] = r
        this.ids1[r] = a
        return r
    }

    static string2id(this: void, a: string): number {

        let str = SolarFourCC.ids2[a];
        if (str) {
            return str;
        }
        if (a.length != 4) {
            log.errorWithTraceBack("错误的id字符串。id字符串长度必须为4位。" + tostring(a))
            return 0;
        }
        return SolarFourCC.__id2(a)
    }


}
