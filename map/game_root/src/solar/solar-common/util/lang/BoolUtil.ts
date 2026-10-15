/** @noSelf **/
export default class BoolUtil {


    /**
     * 判断是否是指定玩家的敌人
     * @param unit  默认触发单位
     * @param player 默认玩家1
     * @constructor
     */
    static isUnitEnemy(unit: unit = GetTriggerUnit(), player: player = Player(0)): boolean {
        return IsUnitEnemy(unit, player)
    }


    /**
     * 判断变量是否存在于数组中
     */
    static isValInArray(sz: any[], bl: any): boolean {
        for (const iterator of sz) {
            if (iterator == bl) {
                return true
            }
        }
        return false
    }

}
