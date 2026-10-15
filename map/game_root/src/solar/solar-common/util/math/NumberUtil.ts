/** @noSelf **/
export default class NumberUtil {


    /**
     * 数字转任意进制
     * @param n
     * @param base
     */
        //!"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
        //将可能影响json格式的放到后面 推荐86进制 74进制可以使用5位字母表达无符号整数
    static digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#$%&()*+-./;<=>?@_~|^,`\"'\\:{}[]";

    static toUnsignedString(n: number, radix: number = 62): string {
        if (radix < 2 || radix > 94) {
            throw new Error("Base must be between 2 and 94");
        }
        if (n === 0) return "0";
        let result = "";
        let num = Math.abs(n); // 使用绝对值处理负数

        while (num > 0) {
            result = NumberUtil.digits.charAt(num % radix) + result; // 在前面添加当前位的字符
            num = Math.floor(num / radix); // 更新num为下一轮计算的值
        }

        if (n < 0) { // 如果原数是负数，则在结果前添加负号
            result = "-" + result;
        }
        return result;
    }

    /**
     * 将任意进制数转换为十进制
     * @param numStr
     * @param radix 原始进制(2-64)
     * @returns 十进制数值
     */
    static parseUnsignedString2Number(numStr: string, radix: number = 62): number {
        if (radix < 2 || radix > 94) throw new Error('Base must be between 2-94');
        let result = 0;
        // 处理整数
        for (let i = 0; i < numStr.length; i++) {
            const char = numStr[i];
            const digit = NumberUtil.digits.indexOf(char);
            if (digit === -1 || digit >= radix) throw new Error('Invalid character for base');
            const power = numStr.length - 1 - i;
            result += digit * Math.pow(radix, power);
        }
        return result;
    }


}