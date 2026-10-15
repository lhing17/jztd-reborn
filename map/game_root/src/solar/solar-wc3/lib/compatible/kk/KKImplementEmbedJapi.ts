export default class KKImplementEmbedJapi {

    private static is_init = false;

    static init() {
        if (KKImplementEmbedJapi.is_init) {
            return
        }
        KKImplementEmbedJapi.is_init = true;
        if (isEmbedJapi){
            return;
        }
        //
        if (GetStoreTarget == null) {
            _G.GetStoreTarget = DzGetActivePatron;
        }
        // if (GetItemAbility == null) {
        //     _G.GetItemAbility = DzGetItemAbility;
        // }
        if (GetFps == null) {
            _G.GetFps = DzGetFPS;
        }
        if (ShowFpsText == null) {
            _G.ShowFpsText = DzToggleFPS;
        }
        if (SetUnitMoveType == null) {
            _G.SetUnitMoveType = DzSetUnitMoveType;
        }
        if (SetUnitName == null) {
            _G.SetUnitName = DzSetUnitName;
        }
        if (SetUnitProperName == null) {
            _G.SetUnitProperName = DzSetUnitProperName;
        }
        if (SetUnitMissileModel == null) {
            _G.SetUnitMissileModel = DzSetUnitMissileModel;
        }
        if (SetUnitPortrait == null) {
            _G.SetUnitPortrait = DzSetUnitPortrait;
        }
        if (SetUnitPressUIVisible == null) {
            _G.SetUnitPressUIVisible = DzSetUnitPreselectUIVisible;
        }
        if (FrameSetViewPort == null) {
            _G.FrameSetViewPort = DzFrameSetClip;
        }
        if (EXSetItemColor == null) {
            _G.EXSetItemColor = DzItemSetVertexColor;
        }
        if (EXSetEffectColor == null) {
            _G.EXSetEffectColor = DzSetEffectVertexColor;
        }
        if (FrameAddModel == null) {
            _G.FrameAddModel = DzFrameAddModel;
        }
        if (SetUnitAbilityButtonPos == null) {
            _G.SetUnitAbilityButtonPos = DzSetUnitAbilityButtonPos;
        }
    }


}