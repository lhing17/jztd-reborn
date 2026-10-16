import WaveService from "../wave/WaveService";
import M1Probe from "../test/M1Probe";
import M1Panel from "../ui/M1Panel";

/** 集中装配并防止重复注册事件；业务实现均位于 game/。 */
export default class M1Game {
    private static initialized = false;
    static init(): void {
        if (M1Game.initialized) return;
        M1Game.initialized = true;
        const service = WaveService.start();
        new M1Probe(service);
        new M1Panel(service);
    }
}
