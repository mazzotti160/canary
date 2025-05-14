local bossConfigurations = {
    [1] = { bossName = "Orshabaal" },
    [2] = { bossName = "Morgaroth" },
    [3] = { bossName = "Ghazbaran" },
    [4] = { bossName = "Zoralurk" },
    [5] = { bossName = "Morshabaal" },
    [6] = { bossName = "Gaz'haragoth" },
    [7] = { bossName = "Chayenne" },    
}

local bossRoom = {
    centerPosition = Position(33537, 32382, 12),
    spawnRange = {from = Position(33527, 32371, 12), to = Position(33547, 32392, 12)},
    spawnArea = {x = 20, y = 20},
    bossPos = Position(33544, 32389, 12)
}

local function getRandomSpawnPosition(fromPosition, toPosition)
    return Position(math.random(fromPosition.x, toPosition.x), math.random(fromPosition.y, toPosition.y), math.random(fromPosition.z, toPosition.z))
end

function startBossRoom(selectedBoss)
    -- Clear existing monsters
    local spectators = Game.getSpectators(bossRoom.centerPosition, false, false, bossRoom.spawnArea.x, bossRoom.spawnArea.x, bossRoom.spawnArea.y, bossRoom.spawnArea.y)
    for _, spectator in pairs(spectators) do
        if spectator:isMonster() then
            spectator:remove()
        end
    end

    -- Spawn the selected boss
    if selectedBoss.bossName then
        local spawnedBoss = Game.createMonster(selectedBoss.bossName, bossRoom.bossPos, true, true)
        if spawnedBoss then
            Game.broadcastMessage("[ RAID ] : " .. selectedBoss.bossName .. " is here!", MESSAGE_GAME_HIGHLIGHT)
            --print(selectedBoss.bossName .. " spawned!")
        else
            --print("[RAID] Failed to spawn boss " .. selectedBoss.bossName .. " in boss room.")
        end
    else
       -- Game.broadcastMessage("The boss room was cleaned and only common monsters were spawned.", MESSAGE_GAME_HIGHLIGHT)
    end
end

local randomBossEvent = GlobalEvent("Random Boss Event")

function randomBossEvent.onTime(interval)
    if type(startBossRoom) == "function" then
        local bossIndex = math.random(1, 7) -- 100% chance divided among the other bosses
        local boss = bossConfigurations[bossIndex]
        startBossRoom(boss)
        --print("[RAID] event has started.")
    else
        --print("[RAID] startBossRoom function does not exist.")
    end
    return true
end

-- Set the interval to 4-6 hours
randomBossEvent:interval(math.random(1 * 60 * 1000 * 60, 4 * 60 * 1000 * 60))
randomBossEvent:register()

local talk = TalkAction("/startboss")

function talk.onSay(player, words, param)
    -- Check if player has access to the command
    if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GAMEMASTER then
        return false
    end

    -- Check if the function "startBossRoom" exists
    if not startBossRoom then
        --print("[RAID] startBossRoom does not exist.")
        return false
    end

    -- Select a random boss
    local bossIndex = math.random(1, #bossConfigurations) -- Use # to get the number of bosses
    local boss = bossConfigurations[bossIndex]

    -- Call the startBossRoom function immediately
    --Game.broadcastMessage("[ RAID ] : " .. boss.bossName .. " is here!", MESSAGE_GAME_HIGHLIGHT)
    --	--Webhook.sendMessage(":moneybag: [ RAID ] : " .. boss.bossName .. " is here!", announcementChannels["anuncios-ingame"])
    startBossRoom(boss)
    print("[RAID] : " .. boss.bossName .. " has been spawned.")

    return false
end
talk:groupType("god")
talk:register()
