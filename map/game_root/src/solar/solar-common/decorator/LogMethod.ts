import DebugUtil from "@/DebugUtil";

let execCountMap = {};

export default function LogMethod(method: (...args) => any, context: ClassMethodDecoratorContext) {
    return (...args) => {
        let execCount = execCountMap[context.name] || 1
        execCountMap[context.name] = execCount + 1;
        let info = "No" + execCount + "." + tostring(context.name) + "( ";
        for (let arg of args) {
            info += arg + " , ";
        }
        info += ")";
        print(info)
        let result = null;
        DebugUtil.countExecuteTime(() => {
            result = method(...args);
        }, tostring(context.name))
        print_r(result)
        return result;
    };
}