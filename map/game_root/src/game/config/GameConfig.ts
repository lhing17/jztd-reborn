/**
 * 全局静态配置：版本、存档协议版本、稳定前缀
 * 数值类配置后续进 xlsx，本文件只放代码级常量
 */
export default class GameConfig {
    /** 项目版本（每次提交发版时 +1，War3 内显示） */
    static version: string = "0.0.1";
    /** 配置版本（xlsx/配置结构变更时 +1） */
    static configVersion: number = 1;
    /** 存档协议版本（04 文档 4.1，迁移函数锚点） */
    static archiveVersion: number = 1;
    /** 项目正式名（待定，确定后同步替换存档前缀 jzr_） */
    static projectName: string = "决战TD·重生(暂定)";
    /** KK 存档 Key 前缀 */
    static archivePrefix: string = "jzr_";
    /** 调试命令前缀（聊天输入 -jt xxx 触发） */
    static debugCmdPrefix: string = "-jt";
}
