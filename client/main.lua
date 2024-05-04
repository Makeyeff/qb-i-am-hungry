local QBCore = exports['qb-core']:GetCoreObject()
local Config = Config

local function playSound()
    local sound = {}
    if math.random(0, 1) == 0 then
        sound = {
            ['file'] = 'stomach-growl.ogg',
            ['volume'] = 1
        }
    else
        sound = {
            ['file'] = 'stomach-rumble.ogg',
            ['volume'] = 1
        }
    end
    local sfx_level = GetProfileSetting(300)
    SendNUIMessage({
        type = 'audio',
        audio = sound,
        distance = Config.distance,
        sfx = sfx_level
    })
end

CreateThread(function()
    local isNotLoad = true
    while isNotLoad do
        local PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData and PlayerData.metadata then
            isNotLoad = false
        end
        Wait(10000)
    end

    while true do
        local PlayerData = QBCore.Functions.GetPlayerData()

        local hunger = PlayerData.metadata["hunger"]
        local thirst = PlayerData.metadata["thirst"]

        if hunger < Config.hunger or thirst < Config.thirst then
            playSound()
        end

        if hunger < Config.hunger then
            local randomhunger = math.random(1, 5)
            if randomhunger == 1 then
                QBCore.Functions.Notify(Lang:t('hunger.hunger1'), 'success')
            elseif randomhunger == 2 then
                QBCore.Functions.Notify(Lang:t('hunger.hunger2'), 'success')
            elseif randomhunger == 3 then
                QBCore.Functions.Notify(Lang:t('hunger.hunger3'), 'success')
            elseif randomhunger == 4 then
                QBCore.Functions.Notify(Lang:t('hunger.hunger4'), 'success')
            else
                QBCore.Functions.Notify(Lang:t('hunger.hunger5'), 'success')
            end
        end
        if thirst < Config.thirst then
            local randomhunger = math.random(1, 5)
            local randomthirst = math.random(1, 5)

            if randomthirst == 1 then
                QBCore.Functions.Notify(Lang:t('thirst.thirst1'), 'success')
            elseif randomthirst == 2 then
                QBCore.Functions.Notify(Lang:t('thirst.thirst2'), 'success')
            elseif randomthirst == 3 then
                QBCore.Functions.Notify(Lang:t('thirst.thirst3'), 'success')
            elseif randomthirst == 4 then
                QBCore.Functions.Notify(Lang:t('thirst.thirst4'), 'success')
            else
                QBCore.Functions.Notify(Lang:t('thirst.thirst5'), 'success')
            end
        end
        Wait(Config.rate)
    end

end)
