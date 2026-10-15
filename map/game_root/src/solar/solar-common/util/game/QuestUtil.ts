export default class QuestUtil {


    static create(title: string, description: string, iconPath: string = "ReplaceableTextures\\CommandButtons\\BTNSpy.blp", required = true, discovered = true) {
        let quest = CreateQuest()
        QuestSetTitle(quest, title)
        QuestSetDescription(quest, description)
        QuestSetIconPath(quest, iconPath)
        QuestSetRequired(quest, required)
        QuestSetDiscovered(quest, discovered)
        QuestSetCompleted(quest, false)
        return quest;
    }


}