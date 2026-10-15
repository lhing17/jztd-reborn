import DataBase from "@/DataBase";
import ArrayUtil from "@/ArrayUtil";

declare global {
    interface GradeIds {
        [grade: number]: string[]
    }

}

/**
 * 品级相关API
 */
export default class GradeUtil {

    static gradeNameLevelMaps: { [kind: string]: { [name: string]: number } } = {
        默认: {
            D: 1,
            C: 2,
            B: 3,
            A: 4,
            S: 5,
            SS: 6,
            SSS: 7,
        }
    };

    /**
     * 根据品级等级 获取品级名称  （如 DCBAS  D为1级 C为2级 B为3级 ...）
     * @param level 品级等级 从1开始
     * @param kind
     */
    static getGradeNameByGradeLevel(level: number, kind: string = "默认"): string {
        let gradeNameLevelMap = GradeUtil.gradeNameLevelMaps[kind];
        for (let gradeName in gradeNameLevelMap) {
            if (gradeNameLevelMap[gradeName] == level) {
                return gradeName;
            }
        }
        return null;
    }

    /**
     * 根据品级名称 获取品级等级  （如 DCBAS  D为1级 C为2级 B为3级 ...）
     * @param name 品级等级
     * @param kind
     */
    static getGradeLevelByGradeName(name: string, kind: string = "默认"): number {
        let gradeNameLevelMap = GradeUtil.gradeNameLevelMaps[kind];
        return gradeNameLevelMap?.[name];
    }

    /**
     * 获取一个随机单位id 根据品级
     * @param grade
     * @param clazzs 限定类别
     */
    static getRandomUnitIdByGrade(grade: number, ...clazzs: string[]): string {
        let gradeIds: GradeIds = GradeUtil.getUnitGradeIds(...clazzs);
        let ids: string[] = gradeIds[grade];
        if (ids == null || ids.length == 0) {
            return null
        }
        return ArrayUtil.randomElement(ids);
    }

    /**
     * 获取一个随机物品id 根据品级
     * @param grade
     * @param clazzs 限定类别
     */
    static getRandomItemIdByGrade(grade: number, ...clazzs: string[]): string {
        let gradeIds: GradeIds = GradeUtil.getItemGradeIds(...clazzs);
        let ids: string[] = gradeIds[grade];
        if (ids == null || ids.length == 0) {
            return null
        }
        return ArrayUtil.randomElement(ids);
    }


    /**
     * 获取单位的品级信息
     */
    static getUnitGradeIds(...clazzs: string[]): GradeIds {
        let gradeIds: GradeIds = {};
        DataBase.forUnitTypeSolarDatas((id, solarData) => {
            if (solarData.grade) {
                if (clazzs && clazzs.length > 0 && !clazzs.includes(solarData.class)) {
                    return
                }
                let ids = gradeIds[solarData.grade];
                if (ids == null) {
                    ids = []
                    gradeIds[solarData.grade] = ids;
                }
                ids.push(id)
            }
        })
        return gradeIds;
    }

    /**
     * 获取物品的品级信息
     */
    static getItemGradeIds(...clazzs: string[]): GradeIds {
        let gradeIds: GradeIds = {};
        DataBase.forItemTypeSolarDatas((id, solarData) => {
            if (solarData.grade) {
                if (clazzs && clazzs.length > 0 && !clazzs.includes(solarData.class)) {
                    return
                }
                let ids = gradeIds[solarData.grade];
                if (ids == null) {
                    ids = []
                    gradeIds[solarData.grade] = ids;
                }
                ids.push(id)
            }
        })
        return gradeIds;
    }

    /**
     * 获取技能的品级信息
     */
    static getAbilityGradeIds(...clazzs: string[]): GradeIds {
        let gradeIds: GradeIds = {};
        DataBase.forAbilityTypeSolarDatas((id, solarData) => {
            if (solarData.grade) {
                if (clazzs && clazzs.length > 0 && !clazzs.includes(solarData.class)) {
                    return
                }
                let ids = gradeIds[solarData.grade];
                if (ids == null) {
                    ids = []
                    gradeIds[solarData.grade] = ids;
                }
                ids.push(id)
            }
        })
        return gradeIds;
    }


    /**
     * 设置物品类型的品级
     * @param id
     * @param grade
     * @param clazz 类别
     */
    static setItemTypeGrade(id: string, grade: number, clazz?: string) {
        let solarData = DataBase.getItemTypeSolarData(id, true);
        solarData.grade = grade;
        if (clazz) {
            solarData.class = clazz;
        }
    }

    /**
     * 设置单位类型的品级
     * @param id
     * @param grade
     * @param clazz 类别
     */
    static setUnitTypeGrade(id: string, grade: number, clazz?: string) {
        let solarData = DataBase.getUnitTypeSolarData(id, true);
        solarData.grade = grade;
        if (clazz) {
            solarData.class = clazz;
        }
    }

    /**
     * 设置技能类型的品级
     * @param id
     * @param grade
     * @param clazz 类别
     */
    static setAbilityTypeGrade(id: string, grade: number, clazz?: string) {
        let solarData = DataBase.getAbilityTypeSolarData(id, true);
        solarData.grade = grade;
        if (clazz) {
            solarData.class = clazz;
        }
    }

    /**
     * 获取单位类型品级
     * @param id
     */
    static getUnitTypeGrade(id: string): number {
        return DataBase.getUnitTypeSolarData(id, false)?.grade;
    }

    /**
     * 获取物品类型品级
     * @param id
     */
    static getItemTypeGrade(id: string): number {
        return DataBase.getItemTypeSolarData(id, false)?.grade;
    }

}