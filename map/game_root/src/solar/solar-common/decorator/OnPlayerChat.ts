export default function OnPlayerChat(chatMessage: string) {
    return function (method: (...args) => any, context: ClassMethodDecoratorContext) {
        se.onPlayerChat(chatMessage, () => {
            print("onPlayerChat测试:" + tostring(context.name))
            method.apply(null);
        });
        return method;
    };
}