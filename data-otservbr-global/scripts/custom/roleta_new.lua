local config = {
    actionId = 24253,  -- Lever ActionID
    requiredItemId = 19082,
    positions = {
        {x = 32352, y = 32237, z = 7},
        {x = 32352, y = 32238, z = 7},
        {x = 32352, y = 32239, z = 7},
        {x = 32352, y = 32240, z = 7},
        {x = 32352, y = 32241, z = 7}
    },
    items = {
        druid = {
            { id = 47373, count = 1, chance = 50, rare = true }, -- amber rod (50% chance)
            { id = 2172, count = 1, chance = 30, rare = false }, -- magic light wand (30% chance)
            { id = 2190, count = 1, chance = 20, rare = false }  -- ring of healing (20% chance)
            -- A soma das chances deve ser 100
        },
        sorcerer = {
            { id = 43884, count = 1, chance = 40, rare = true }, -- sanguine boots (40% chance)
            { id = 2176, count = 1, chance = 40, rare = false }, -- wands of vortex (40% chance)
            { id = 2168, count = 1, chance = 20, rare = false }  -- life crystal (20% chance)
            -- A soma das chances deve ser 100
        },
        knight = {
            { id = 34097, count = 1, chance = 60, rare = true }, -- pair of soulwalkers (60% chance)
            { id = 2453, count = 1, chance = 25, rare = false }, -- heavy mace (25% chance)
            { id = 2167, count = 1, chance = 15, rare = false }  -- energy ring (15% chance)
            -- A soma das chances deve ser 100
        },
        paladin = {
            { id = 47371, count = 1, chance = 35, rare = true }, -- amber bow (35% chance)
            { id = 2544, count = 1, chance = 45, rare = false }, -- hunting spear (45% chance)
            { id = 2166, count = 1, chance = 20, rare = false }  -- platinum amulet (20% chance)
            -- A soma das chances deve ser 100
        }
    }
}

local VOCATION_BASE_ID = {
    SORCERER = 1,
    DRUID = 2,
    PALADIN = 3,
    KNIGHT = 4,
    MSORCERER = 5,
    EDRUID = 6,
    RPALADIN = 7,
    EKNIGHT = 8
}

local devMode = true

local isRouletteRunning = false

local function addItemToPlayer(player, item)
    player:addItem(item.id, item.count)
    Game.broadcastMessage(player:getName() .. " won a " .. ItemType(item.id):getName() .. " in the Super Roulette!", MESSAGE_GAME_HIGHLIGHT)
    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
end

local function getRandomItemFromTable(tableItems)
    local totalChance = 0
    for _, item in ipairs(tableItems) do
        totalChance = totalChance + item.chance
    end

    if totalChance ~= 100 then
        error("Error: The sum of chances in an item table is not equal to 100!")
        return nil
    end

    local randomNumber = math.random(1, 100)
    local cumulativeChance = 0
    for _, item in ipairs(tableItems) do
        cumulativeChance = cumulativeChance + item.chance
        if randomNumber <= cumulativeChance then
            return item
        end
    end
    return nil -- Should not happen if the chances sum to 100
end

local function getRandomItemByVocation(vocationId)
    if vocationId == VOCATION_BASE_ID.DRUID or vocationId == VOCATION_BASE_ID.EDRUID then
        return getRandomItemFromTable(config.items.druid)
    elseif vocationId == VOCATION_BASE_ID.SORCERER or vocationId == VOCATION_BASE_ID.MSORCERER then
        return getRandomItemFromTable(config.items.sorcerer)
    elseif vocationId == VOCATION_BASE_ID.PALADIN or vocationId == VOCATION_BASE_ID.RPALADIN then
        return getRandomItemFromTable(config.items.paladin)
    elseif vocationId == VOCATION_BASE_ID.KNIGHT or vocationId == VOCATION_BASE_ID.EKNIGHT then
        return getRandomItemFromTable(config.items.knight)
    end
    return nil
end

local function getRandomItem()
    local player = Player(cid)
    if player then
        local vocationId = player:getVocation():getBaseId()
        return getRandomItemByVocation(vocationId)
    end
    return nil
end

local function moveItems()
    for i = #config.positions, 2, -1 do
        local tile = Tile(config.positions[i - 1])
        local item = tile and tile:getTopDownItem()
        if item then
            item:moveTo(config.positions[i])
        end
    end
end

local function clearItems()
    for _, pos in ipairs(config.positions) do
        local tile = Tile(Position(pos))
        if tile then
            local item = tile:getTopDownItem()
            while item do
                item:remove()
                item = tile:getTopDownItem()
            end
        end
    end
end

local function createItemWithEffect(position, item)
    Game.createItem(item.id, item.count, Position(position))
    Position(position):sendMagicEffect(CONST_ME_MAGIC_BLUE)
end

local function getItemConfigById(itemId)
    for _, tableItems in pairs(config.items) do
        for _, item in ipairs(tableItems) do
            if item.id == itemId then
                return item
            end
        end
    end
    return nil
end

local function rouletteAction(player)
    isRouletteRunning = true
    local steps = 35
    local interval = 30

    local currentItem = getRandomItemByVocation(player:getVocation():getBaseId())
    if not currentItem then
        isRouletteRunning = false
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "No items available for your vocation in the roulette or chance configuration error.")
        return
    end
    createItemWithEffect(config.positions[1], currentItem)

    for i = 1, steps do
        addEvent(function()
            moveItems()
            if i == steps then
                local winningItem = Tile(Position(config.positions[#config.positions])):getTopDownItem()
                if winningItem then
                    clearItems()
                    for _, pos in ipairs(config.positions) do
                        createItemWithEffect(pos, {id = winningItem:getId(), count = winningItem:getCount()})
                    end
                    local itemConfig = getItemConfigById(winningItem:getId())
                    addItemToPlayer(player, itemConfig)
                end
                isRouletteRunning = false
            else
                local lastPositionTile = Tile(Position(config.positions[#config.positions]))
                if lastPositionTile then
                    local lastItem = lastPositionTile:getTopDownItem()
                    if lastItem then
                        lastItem:remove()
                        Position(config.positions[#config.positions]):sendMagicEffect(CONST_ME_POFF)
                    end
                end
                local nextItem = getRandomItemByVocation(player:getVocation():getBaseId())
                if nextItem then
                    createItemWithEffect(config.positions[1], nextItem)
                end
            end
        end, i * interval)

        interval = interval + 10
    end
end

local rouletteLever = Action()

function rouletteLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if devMode then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "COMING SOON!")
        return false
    end

    if isRouletteRunning then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Roulette is running, please wait.")
        return false
    end

    if item.actionid == config.actionId then
        if player:removeItem(config.requiredItemId, 5) then
            clearItems()
            rouletteAction(player)
            return true
        else
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need 5 roulette coins.")
            return false
        end
    end
    return false
end

rouletteLever:aid(config.actionId)
rouletteLever:register()