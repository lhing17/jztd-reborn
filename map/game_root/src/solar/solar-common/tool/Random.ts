export default class Random {
    private _base_seed = 0;
    private nowVal = 0;
    /**
     * 第多少个随机数
     */
    index: number = 0;


    constructor(seed?: number) {
        if (seed == null) {
            seed = (314159269 * os.time() * Math.floor(os.clock() * 1000) + 453806245);
        }
        this._base_seed = seed;
        this.nowVal = this._base_seed;
    }


    /**
     * 将当前随机数初始到最开始的状态
     */
    reset() {
        this.nowVal = this._base_seed;
        this.index = 0;
    }

    /**
     * 获取指定位置的随机值
     * @param count
     */
    seek(count: number): number {
        for (let i = 1; i < count; i++) {
            this.next();
        }
        return this.next();
    }

    /**
     * 获取本地随机数
     * @param min
     * @param max
     */
    private next(): number {
        this.index++;
        this.nowVal = (314159269 * this.nowVal + 453806245);
        return this.nowVal / 2147483648;
    }

    /**
     * 获取本地随机整数
     * @param min
     * @param max
     */
    nextInt(min: number, max: number): number {
        return Math.floor(this.nextReal(min, max) + 0.5);
    }

    /**
     * 获取本地随机实数
     * @param min
     * @param max
     */
    nextReal(min: number, max: number): number {
        return this.next() % (max - min) + min;
    }


    /**
     * 返回一个随机的true 或是 false
     */
    nextBool(): boolean {
        return this.nextInt(0, 100) < 50;
    }


}
