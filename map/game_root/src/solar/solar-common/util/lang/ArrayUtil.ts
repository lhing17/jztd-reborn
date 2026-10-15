import RandomUtil from "@/RandomUtil";

export default class ArrayUtil {


    /**
     * 根据字段筛选
     * @param dataArray
     * @param keyAndSelectVal
     */
    static selectByWhere(dataArray: any[], ...keyAndSelectVal: any[]): any[] {
        if (dataArray == null || dataArray.length == 0) {
            return dataArray
        }
        if (keyAndSelectVal == null || keyAndSelectVal.length == 0) {
            return dataArray;
        }
        if (keyAndSelectVal.length % 2 != 0) {
            log.errorWithTraceBack("查询参数和值必须成对传入!")
            return dataArray;
        }
        let result = []
        for (let data of dataArray) {
            if (data == null) {
                continue
            }
            //
            let isOk = true;
            //校验是否相等
            for (let i = 0; i < keyAndSelectVal.length - 1; i = i + 2) {
                if (data[keyAndSelectVal[i]] != keyAndSelectVal[i + 1]) {
                    isOk = false;
                    break
                }
            }
            if (isOk) {
                result.push(data);
            }
        }
        return result;
    };


    /**
     * 获取对象数组里的单独属性组装到数组
     * @param array
     * @param key
     */
    static getPropertyVals<T>(array: T[], key: keyof T): any[] {
        if (array == null) {
            return null;
        }
        let result = [];
        for (let arrayElement of array) {
            result.push(arrayElement[key]);
        }
        return result;
    }


    /**
     * 随机一个元素
     */
    static randomElement<T>(array: T[]): T {
        if (array == null || array.length == 0) {
            return null;
        }
        return array[GetRandomInt(0, array.length - 1)]
    }

    /**
     * 随机获得数组中的尽可能最多指定个数的元素
     */
    static randomElements<T>(array: T[], resultMaxSize: number): T[] {
        if (array == null || array.length == 0) {
            return null;
        }
        if (array.length <= resultMaxSize) {
            return [...array]
        }
        let result = [];
        for (let i = 0; i < 1000000; i++) {
            let randomElement = array[GetRandomInt(0, array.length - 1)];
            if (!result.includes(randomElement)) {
                result.push(randomElement);
                if (result.length >= resultMaxSize) {
                    return result;
                }
            }
        }
        return result;
    }


    /**
     * @brief 把数组中的元素按随机顺序重新排列
     * @param array 需要排序的数组
     * @returns 随机排序后的 原数组
     */
    static shuffle<T>(array: T[]): T[] {
        let tempItem = null;
        for (let i = array.length - 1; i >= 1; i--) {
            let randomIndex = RandomUtil.nextInt(0, i);
            if (randomIndex == i) {
                continue
            }
            tempItem = array[randomIndex];
            array[randomIndex] = array[i];
            array[i] = tempItem;
        }
        return array;
    }


    /**
     * 从数组移除指定元素。（移除第一个指定对象）
     * @param array
     * @param deleteElement
     */
    static removeElement(array: any[], deleteElement: any): boolean {
        if (array == null || deleteElement == null) {
            return false;
        }
        let indexOf = array.indexOf(deleteElement);
        if (indexOf >= 0) {
            array.splice(indexOf, 1);
            return true;
        }
        return false;
    }

    /**
     * 从数组移除指定索引元素。（移除第一个指定对象）
     * @param array
     * @param index
     */
    static removeElementByIndex(array: any[], index: number) {
        if (array == null || index >= array.length) {
            return null;
        }
        return array.splice(index, 1);
    }

    /**
     * 清空数组
     * @param array
     */
    static clear(array: any) {
        if (array == null) {
            return
        }
        for (const key in array) {
            deleteKey(array, key)
        }
    }

    /**
     * 更加安全的遍历数组 （支持在遍历函数中删除当前元素）
     * ps：lua遇到null时会截断数组。所以删除元素的时候会把后面的元素向前移位 所以倒着遍历才能支持这种操作
     * @param array
     * @param callbackfn
     */
    static forEach<T>(array: T[], callbackfn: (value: T, index: number) => void): void {
        if (array == null || callbackfn == null) {
            return
        }
        for (let i = array.length - 1; i >= 0; i--) {
            let value = array[i];
            callbackfn(value, i);
        }
    }
}