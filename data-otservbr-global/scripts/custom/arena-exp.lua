local configGlobal = {
    level = 100,
    testmode = false, -- Cooldown será ignorado se true
    maxTime = 60, -- Tempo em minutos
    exitPos = Position(32216, 32209, 7),
    needPos = {
        [1] = Position(32229, 32207, 7),
        [2] = Position(32229, 32208, 7),
        [3] = Position(32229, 32209, 7),
        [4] = Position(32229, 32210, 7)
    },
    arenaScrollId = 14758, -- ID do item "arena scroll"
    arenaExpCooldownHours = 20, -- Tempo de cooldown em horas
    cooldownKey = "arena-exp-cd" -- Key para armazenar o cooldown no KVStorage
}

local function createDungeonConfig(z)
    return {
        dungeonPos = Position(31732, 32336, z), --(31732, 32336, 0)
        fromPos = {x = 31660, y = 32244, z = z}, --(31660, 32244, 7)
        toPos = {x = 31785, y = 32355, z = z}, --(31785, 32355, 7)
        centerPosition = Position(31722, 32300, z), --(31722, 32300, 7)
        spawnArea = {x = 65, y = 65},
    }
end

local configs = {}
for z = 0, 15 do
    table.insert(configs, createDungeonConfig(z))
end

local guildDungeonLever = Action()

local function isDungeonOccupied(config)
    local players = {}
    for x = config.fromPos.x, config.toPos.x do
        for y = config.fromPos.y, config.toPos.y do
            for z = config.fromPos.z, config.toPos.z do
                local tile = Tile(x, y, z)
                local creature = tile:getTopCreature()
                if creature and creature:isPlayer() then
                    players[#players + 1] = creature
                end
            end
        end
    end
    return #players > 0
end

local function checkForNonPlayerCreatures(config, z)
    local creatures = Game.getSpectators(Position(config.centerPosition.x, config.centerPosition.y, z), false, false, config.spawnArea.x, config.spawnArea.y, config.spawnArea.x, config.spawnArea.y)
    local creatureCount = 0
    local creatureNames = ""

    for _, creature in ipairs(creatures) do
        if not creature:isPlayer() then
            creatureCount = creatureCount + 1
            creatureNames = creatureNames .. creature:getName() .. ", "
        end
    end

    return creatureCount, creatureNames
end

function guildDungeonLever.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    local selectedConfig = nil

    for _, config in ipairs(configs) do
        if not isDungeonOccupied(config) then
            selectedConfig = config
            break
        end
    end

    if not selectedConfig then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All dungeons are currently occupied.")
        return true
    end

    if player:getLevel() < configGlobal.level then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to be level " .. configGlobal.level .. " or higher.")
        return true
    end

    -- Checagem de cooldown
    local cooldownTime = player:kv():get(configGlobal.cooldownKey)
    if not configGlobal.testmode and cooldownTime and cooldownTime > os.time() then
        local remainingTime = cooldownTime - os.time()
        local remainingHours = math.floor(remainingTime / 3600)
        local remainingMinutes = math.floor((remainingTime % 3600) / 60)
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must wait " .. remainingHours .. " hour(s) and " .. remainingMinutes .. " minute(s) to enter it again.")
        return true
    end

    -- Checagem se o jogador possui o item necessário e remove
    if player:getItemCount(configGlobal.arenaScrollId) >= 1 then
        player:removeItem(configGlobal.arenaScrollId, 1)
        -- Teleports acontecem normalmente aqui
        for i = 1, #configGlobal.needPos do
            local pos = configGlobal.needPos[i]
            local tile = Tile(pos)
            if tile then
                local creature = tile:getTopCreature()
                if creature and creature:isPlayer() then
                    creature:teleportTo(selectedConfig.dungeonPos)
                    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
                    creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have " .. configGlobal.maxTime .. " minute(s) to hunt here!")
                    -- Define o cooldown para o jogador SE não estiver em testmode
                    if not configGlobal.testmode then
                        creature:kv():set(configGlobal.cooldownKey, os.time() + configGlobal.arenaExpCooldownHours * 3600)
                    end
                end
            end
        end

        addEvent(function()
            local players = Game.getSpectators(selectedConfig.centerPosition, false, true, selectedConfig.spawnArea.x, selectedConfig.spawnArea.x, selectedConfig.spawnArea.y, selectedConfig.spawnArea.y)
            for _, currentPlayer in pairs(players) do
                local playerPos = currentPlayer:getPosition()
                if playerPos.x >= selectedConfig.fromPos.x and playerPos.x <= selectedConfig.toPos.x and
                    playerPos.y >= selectedConfig.fromPos.y and playerPos.y <= selectedConfig.toPos.y and
                    playerPos.z == selectedConfig.fromPos.z then
                    currentPlayer:teleportTo(configGlobal.exitPos)
                    currentPlayer:getPosition():sendMagicEffect(CONST_ME_POFF)
                    currentPlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your time inside the dungeon has expired. You have been teleported out!")
                end
            end
        end, configGlobal.maxTime * 60 * 1000) -- Usando a fórmula com maxTime em minutos
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Sorry, you don't have arena scroll. Please buy it from the store.")
        return true
    end
    -- Fim da checagem de item e teleports

    return true
end

--guildDungeonLever:aid(29305) --(32229, 32206, 7)
guildDungeonLever:position({ x = 32229, y = 32206, z = 7 })--(32229, 32206, 7)
guildDungeonLever:register()