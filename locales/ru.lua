local Translations = {
    hunger = {
        hunger1 = "Я голоден",
        hunger2 = "Я умираю от голода",
        hunger3 = "Поесть бы",
        hunger4 = "Убил бы за тушёнку",
        hunger5 = "Я уже задумываюсь о каннибализме"
    },
    thirst = {
        thirst1 = "Я хочу пить",
        thirst2 = "Я умираю от жажды",
        thirst3 = "Меня мучает жажда",
        thirst4 = "Глотка бы чего",
        thirst5 = "Во рту сухо, как в пустыне"
    }
}

if GetConvar('qb_locale', 'en') == 'ru' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang
    })
end
