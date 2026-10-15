import LangUtil from "@/LangUtil";
import Cache from "@/Cache";

/**
 * 矢量工具
 */
export default class VectorUtil {

    private static cache = new Cache();

    /**
     * 加法
     * @param v1
     * @param v2
     */
    static add(v1: Vector, v2: Vector): Vector {
        let x = v1.x + v2.x
        let y = v1.y + v2.y
        if (v1.z) {
            let z = v1.z + (v2.z ? v2.z : 0)
            return {x, y, z}
        }
        return {x, y}
    }

    /**
     * 减法
     * @param v1
     * @param v2
     */
    static subtract(v1: Vector, v2: Vector): Vector {
        let x = v1.x - v2.x
        let y = v1.y - v2.y
        if (v1.z) {
            let z = v1.z - (v2.z ? v2.z : 0)
            return {x, y, z}
        }
        return {x, y}
    }

    /**
     * 乘法
     * @param v1
     * @param v2
     */
    static mult(v1: Vector, v2: Vector): Vector {
        let x = v1.x * v2.x
        let y = v1.y * v2.y
        if (v1.z) {
            let z = v1.z * (v2.z ? v2.z : 0)
            return {x, y, z}
        }
        return {x, y}
    }

    /**
     * 矢量乘缩放值
     * @param v1
     * @param scalar
     */
    static multScalar(v1: Vector, scalar: number): Vector {
        let x = v1.x * scalar
        let y = v1.y * scalar
        if (v1.z) {
            let z = v1.z * scalar
            return {x, y, z}
        }
        return {x, y}
    }

    /**
     * 矢量xy在范围内随机变化一次
     * @param v1
     * @param bound 半径范围
     */
    static getRandomXY(v1: Vector, bound: number): Vector {
        let x = v1.x + GetRandomInt(-bound, bound)
        let y = v1.y + GetRandomInt(-bound, bound)
        return {x, y}
    }

    /**
     * 从data数据转 Vector
     * 可以根据 _sl_editor.l_任务乌龟A[0] 字符串自动从线段取坐标值 (表格数据使用这个可以方便策划填坐标值或取太阳画线坐标)
     * @param data
     */
    static getVector(data: any): Vector {
        if (data == null) {
            return null;
        }
        //_sl_editor.l_任务乌龟A[0]
        if (LangUtil.isString(data) && (data as string).endsWith("]")) {
            let lineLoc = VectorUtil.cache.get(data) as any;
            if (lineLoc) {
                return lineLoc;
            }
            let solarLineInfo: string = data
            let indexOf = solarLineInfo.indexOf("[");
            if (indexOf <= 0) {
                print("线变量不存在:<" + data + ">...可在太阳rpg编辑器中双击地形画此变量名对应的线!")
                return null;
            }
            let solarLineName = solarLineInfo.substring(0, indexOf)
            let solarLineIndex: number = tonumber(solarLineInfo.substring(indexOf + 1, solarLineInfo.length - 1))
            try {
                let _require = require;
                let t2LExports = _require(solarLineName);
                let [key, lineVals] = next(t2LExports);
                let vectors: Vector[] = (lineVals as any[])
                if (solarLineIndex >= vectors.length) {
                    log.errorWithTraceBack("线变量长度不足![" + data + "]当前线变量最大索引为:" + (vectors.length - 1))
                    return null;
                }
                lineLoc = vectors[solarLineIndex];
                VectorUtil.cache.put(data, lineLoc);
                return lineLoc;
            } catch (e) {
                print(e)
                print("E:线变量不存在:<" + data + ">...可在太阳rpg编辑器中双击地形画此变量名对应的线!")
            }
        } else if (data.x && data.y) {
            return data
        }

        return null;
    }

}