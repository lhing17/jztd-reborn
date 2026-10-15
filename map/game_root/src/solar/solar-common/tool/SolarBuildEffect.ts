export default class SolarBuildEffect {

    static canBuildEffectPath = "solar_asset\\model\\grid_green.mdx";
    static cannotBuildEffectPath = "solar_asset\\model\\grid_red.mdx";

    tempBuildEffect: effect = null;
    pathTipLeftTopEffect: effect = null;
    pathTipRightTopEffect: effect = null;
    pathTipLeftBottomEffect: effect = null;
    pathTipRightBottomEffect: effect = null;


    constructor() {

        this.tempBuildEffect = AddSpecialEffect("", 0, 0);
        this.pathTipLeftTopEffect = AddSpecialEffect("", 0, 0);
        this.pathTipRightTopEffect = AddSpecialEffect("", 0, 0);
        this.pathTipLeftBottomEffect = AddSpecialEffect("", 0, 0);
        this.pathTipRightBottomEffect = AddSpecialEffect("", 0, 0);


        EXEffectMatRotateZ(this.tempBuildEffect, 270);
        //
        EXSetEffectSize(this.pathTipLeftTopEffect, 0.5);
        EXSetEffectSize(this.pathTipRightTopEffect, 0.5);
        EXSetEffectSize(this.pathTipLeftBottomEffect, 0.5);
        EXSetEffectSize(this.pathTipRightBottomEffect, 0.5);


    }

    setBuildEffectModelPath(tempBuildEffectPath: string) {
        SetUnitModel(this.tempBuildEffect as any, tempBuildEffectPath)
    }

    setBuildXY(x: number, y: number, z: number = 0) {
        EXSetEffectXY(this.tempBuildEffect, x, y);
        EXSetEffectZ(this.tempBuildEffect, z);
        let gap = 32;
        //one case
        EXSetEffectXY(this.pathTipLeftTopEffect, x - gap, y + gap);
        EXSetEffectZ(this.pathTipLeftTopEffect, z);
        //one case
        EXSetEffectXY(this.pathTipRightTopEffect, x + gap, y + gap);
        EXSetEffectZ(this.pathTipRightTopEffect, z);
        //one case
        EXSetEffectXY(this.pathTipLeftBottomEffect, x - gap, y - gap);
        EXSetEffectZ(this.pathTipLeftBottomEffect, z);
        //one case
        EXSetEffectXY(this.pathTipRightBottomEffect, x + gap, y - gap);
        EXSetEffectZ(this.pathTipRightBottomEffect, z);
    }

    setVisible(visible: boolean) {
        EXSetEffectVisible(this.tempBuildEffect, visible);
        EXSetEffectVisible(this.pathTipLeftTopEffect, visible);
        EXSetEffectVisible(this.pathTipRightTopEffect, visible);
        EXSetEffectVisible(this.pathTipLeftBottomEffect, visible);
        EXSetEffectVisible(this.pathTipRightBottomEffect, visible);
        if (visible) {

        } else {

        }
    }


    setCanBuild(canBuild: boolean, canBuild_LeftTop: boolean = canBuild, canBuild_RightTop: boolean = canBuild
        , canBuild_LeftBottom: boolean = canBuild, canBuild_RightBottom: boolean = canBuild) {
        SetUnitModel(this.pathTipLeftTopEffect as any, canBuild_LeftTop ? SolarBuildEffect.canBuildEffectPath : SolarBuildEffect.cannotBuildEffectPath);
        SetUnitModel(this.pathTipRightTopEffect as any, canBuild_RightTop ? SolarBuildEffect.canBuildEffectPath : SolarBuildEffect.cannotBuildEffectPath);
        SetUnitModel(this.pathTipLeftBottomEffect as any, canBuild_LeftBottom ? SolarBuildEffect.canBuildEffectPath : SolarBuildEffect.cannotBuildEffectPath);
        SetUnitModel(this.pathTipRightBottomEffect as any, canBuild_RightBottom ? SolarBuildEffect.canBuildEffectPath : SolarBuildEffect.cannotBuildEffectPath);
    }

}