local Translations = {
    hunger = {
        hunger1 = "I am hungry",
        hunger2 = "I am starving",
        hunger3 = "I'd like to eat",
        hunger4 = "I would kill for stew",
        hunger5 = "I'm already thinking about cannibalism"
    },
    thirst = {
        thirst1 = "I'm thirsty",
        thirst2 = "I'm dying of thirst",
        thirst3 = "I'm thirsty",
        thirst4 = "I'm thirsty",
        thirst5 = "My mouth is as dry as the desert"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
