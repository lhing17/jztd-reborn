export default class DebugResUtil {

    static icons = [
        "ReplaceableTextures\\CommandButtons\\BTNOgre.blp",
        "ReplaceableTextures\\CommandButtons\\BTNPig.blp",
        "ReplaceableTextures\\CommandButtons\\BTNGoblinZeppelin.blp",
        "ReplaceableTextures\\CommandButtons\\BTNSpawningGrounds.blp",
        "ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"

    ];
    static models = [
        "units\\creeps\\Ogre\\Ogre.mdx",
        "units\\critters\\Pig\\Pig.mdx",
        "units\\creeps\\GoblinZeppelin\\GoblinZeppelin.mdx",
        "buildings\\naga\\SpawningGrounds\\SpawningGrounds.mdx",
        "Objects\\InventoryItems\\TreasureChest\\treasurechest.mdx",

    ];
    static iconIndex = 0;
    static modelIndex = 0;


    static getNextIconResPath(): string {
        DebugResUtil.iconIndex++;
        return DebugResUtil.icons[DebugResUtil.iconIndex % DebugResUtil.icons.length]
    }


    static getNextModelResPath(): string {
        DebugResUtil.modelIndex++;
        return DebugResUtil.models[DebugResUtil.modelIndex % DebugResUtil.models.length]
    }


}