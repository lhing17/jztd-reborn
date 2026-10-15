import DebugSgpUtil from "@/DebugSgpUtil";

export default function AddCustomMenu(menuName: string, category: string = "基础",
                                      editorActionCommand?: "ObjectSelectPanel" | string, editorActionCommandParams?: any) {
    return function (method: (...args) => any, context: ClassMethodDecoratorContext) {
        DebugSgpUtil.addCustomMenu(menuName, method, category, editorActionCommand, editorActionCommandParams);
        return method;
    };
}