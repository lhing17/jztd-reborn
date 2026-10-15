export default function OnSolarEvent<Key extends keyof AppEventType>(type: Key) {
    return function (method: (...args) => any, context: ClassMethodDecoratorContext) {
        se.on(type, (event, solarTrigger) => {
            method.apply(null, event);
        });
        return method;
    };
}