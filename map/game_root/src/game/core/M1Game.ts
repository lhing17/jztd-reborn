import WaveService from "../wave/WaveService";
import M1Probe from "../test/M1Probe";
import M1Panel from "../ui/M1Panel";
import DiscipleService from "../disciple/DiscipleService";
import D13Probe from "../test/D13Probe";
import SectService from "../sect/SectService";
import SectPanel from "../ui/SectPanel";

/** 集中装配并防止重复注册事件；业务实现均位于 game/。 */
export default class M1Game {
    private static initialized = false;
    static init(): void {
        if (M1Game.initialized) return;
        M1Game.initialized = true;
        const service = WaveService.start();
        const sects = new SectService(service);
        new SectPanel(sects);
        new M1Probe(service);
        new M1Panel(service, id => sects.read(id)?.chosenId === "");
        if (isDebug) new D13Probe(new DiscipleService(service));
    }
}
