export default function OnReloadScript (method: (...args) => any, context: ClassMethodDecoratorContext) {
    se.on("_sl_重载脚本",data => {
        method();
    });
    return method;
}