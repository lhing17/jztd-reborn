import InputUtil from "@/InputUtil";
import KeyCode from "@/KeyCode";


export default function OnKeyPressed(key: KeyCode) {
    return function (method: (...args) => any, context: ClassMethodDecoratorContext) {
        InputUtil.onKeyPressed(key, () => {
            print("OnKeyPressed测试:" + tostring(context.name))
            method.apply(null);
        });
        return method;
    };
}