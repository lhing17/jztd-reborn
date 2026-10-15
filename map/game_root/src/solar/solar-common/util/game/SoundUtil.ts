import Cache from "@/Cache";

export default class SoundUtil {
    static cache = new Cache();

    /**
     * 播放音乐
     * @param musicFilePath 音乐文件地址
     */
    static playMusic(musicFilePath: string) {
        PlayMusic(musicFilePath)
    }

    /**
     * 播放主题音乐
     * @param musicFilePath 音乐文件地址
     */
    static playThematicMusic(musicFilePath: string) {
        PlayThematicMusic(musicFilePath)
    }

    /**
     * 播放音效
     * @param musicFilePath 音乐文件地址
     * @param dur
     */
    static playSound(musicFilePath: string, dur: number = 1000) {
        PlaySound(musicFilePath)
    }

    /**
     * 在指定点播放音效
     * @param musicFilePath 音乐文件地址
     * @param dur
     * @param unit
     */
    static playSoundOnUnit(musicFilePath: string, dur: number = 1000, unit: unit) {
        let sound = SoundUtil.getSoundHandleFromSoundFilePath(musicFilePath, dur);
        AttachSoundToUnit(sound, unit);
        StartSound(sound)
    }

    /**
     * 在指定点播放3d音效
     * @param musicFilePath 音乐文件地址 仅支持 wav格式 单通道 22050hz或以下采样率
     * @param dur
     * @param x
     * @param y
     */
    static playSoundOnPos(musicFilePath: string, dur: number = 1000, x: number, y: number) {
        let sound = SoundUtil.getSoundHandleFromSoundFilePath(musicFilePath, dur);
        SetSoundPosition(sound, x, y, 0)
        StartSound(sound)
    }


    /**
     * 获取音效
     * @param musicFilePath 音乐文件地址
     * @param dur 音效持续时间 毫秒单位
     */
    static getSoundHandleFromSoundFilePath(musicFilePath: string, dur: number = 1000) {
        let sound = SoundUtil.cache.get(musicFilePath + ":3D:" + dur, () => {
            return SoundUtil.createSound3D(musicFilePath, dur);
        });
        return sound;
    }

    /**
     * 创建音效
     * @param musicFilePath 音乐文件地址
     * @param dur 音效持续时间 毫秒单位
     */
    static createSound(musicFilePath: string, dur: number = 1000): sound {
        let sound = CreateSound(musicFilePath, false, false, false, 10, 10, "")
        SetSoundDuration(sound, dur)
        SetSoundChannel(sound, 0)
        SetSoundVolume(sound, 127)
        SetSoundPitch(sound, 1.0)
        return sound;
    }

    /**
     * 创建音效3D
     * @param musicFilePath 音乐文件地址
     * @param dur 音效持续时间 毫秒单位
     */
    static createSound3D(musicFilePath: string, dur: number = 1000): sound {
        let sound = CreateSound(musicFilePath, false, true, true, 10, 10, "DefaultEAXON")
        SetSoundDuration(sound, dur)
        SetSoundChannel(sound, 0)
        SetSoundVolume(sound, 127)
        SetSoundPitch(sound, 1.0)
        SetSoundDistances(sound, 800, 10000.0)
        SetSoundDistanceCutoff(sound, 5000.0)
        SetSoundConeAngles(sound, 0.0, 0.0, 127)
        SetSoundConeOrientation(sound, 0.0, 0.0, 0.0)
        return sound;
    }


}