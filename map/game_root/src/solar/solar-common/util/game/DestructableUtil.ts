/** @noSelf **/
export default class DestructableUtil {

    static lastDestructables: destructable[] = [];

    /**
     * 在指定区域是否有装饰物
     * @param centerX
     * @param centerY
     * @param radius
     * @param destructableId
     */
    static hasDestructableInRect(centerX: number, centerY: number, radius: number, destructableId: string): boolean {
        tempBoolean = false;
        tempNumber = FourCC(destructableId);
        //使用命名函数
        SetRect(tempRect, centerX - radius, centerY - radius, centerX + radius, centerY + radius);
        //使用命名函数
        EnumDestructablesInRect(tempRect, null, DestructableUtil._HasDestructableInRectActionFunc);
        return tempBoolean
    }

    /**
     * 获取区域内的一个可破坏物
     * @param centerX
     * @param centerY
     * @param radius
     */
    static getDestructableInRect(centerX: number, centerY: number, radius: number): destructable {
        DestructableUtil.getDestructablesInRect(centerX, centerY, radius);
        if (DestructableUtil.lastDestructables && DestructableUtil.lastDestructables.length > 0) {
            return DestructableUtil.lastDestructables[0];
        }
        return null;
    }

    /**
     * 获取区域内的所有可破坏物
     * @param centerX
     * @param centerY
     * @param radius
     */
    static getDestructablesInRect(centerX: number, centerY: number, radius: number): destructable[] {
        DestructableUtil.lastDestructables = [];
        SetRect(tempRect, centerX - radius, centerY - radius, centerX + radius, centerY + radius);
        //使用命名函数
        EnumDestructablesInRect(tempRect, null, DestructableUtil._GetDestructableInRectActionFunc);
        return DestructableUtil.lastDestructables;
    }

    private static _HasDestructableInRectActionFunc(this: void) {
        if (GetDestructableTypeId(GetEnumDestructable()) == tempNumber) {
            tempBoolean = true
        }
    }

    private static _GetDestructableInRectActionFunc(this: void) {
        DestructableUtil.lastDestructables.push(GetEnumDestructable())
    }

}
