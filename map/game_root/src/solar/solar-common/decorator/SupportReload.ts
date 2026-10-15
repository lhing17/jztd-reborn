import DebugVmUtil from "@/DebugVmUtil";
import SolarReload from "@/SolarReload";

/**
 * 按F9 自动重新加载此装饰器标记的类所在的文件
 * @param config
 * @constructor
 */
export default function SupportReload(config?: { autoNew: boolean }) {
    let loadedKey = DebugVmUtil.getRequireModName(3);
    SolarReload.reloadFileConfig[loadedKey] = config || {}
    return function (clazz, context: ClassDecoratorContext) {
        return clazz;
    }

}
type SupportReloadType = typeof SupportReload;
declare global {
    let SupportReload: SupportReloadType
}