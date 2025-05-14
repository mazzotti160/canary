local config = {
    actionId = 24252,  -- ActionID da alavanca
    requiredItemId = 19082,
    positions = {
        {x = 32343, y = 32234, z = 7}, -- Posição inicial
        {x = 32344, y = 32234, z = 7},
        {x = 32345, y = 32234, z = 7},
        {x = 32346, y = 32234, z = 7},
        {x = 32347, y = 32234, z = 7}, -- Posição final (centro)
        {x = 32348, y = 32234, z = 7},
        {x = 32349, y = 32234, z = 7},
        {x = 32350, y = 32234, z = 7},
        {x = 32351, y = 32234, z = 7}  -- Posição Final
    },
    items = {
        druid = {
{ id = 47373, count = 1, chance = 1, raro = true }, -- amber rod
{ id = 22153, count = 1, chance = 1, raro = true }, -- dark wizard's crown
{ id = 12809, count = 1, chance = 1, raro = true }, -- epic wisdom
{ id = 34266, count = 1, chance = 1, raro = true }, -- Tibiapedia
{ id = 34093, count = 1, chance = 1, raro = true }, -- soulstrider
{ id = 34096, count = 1, chance = 1, raro = true }, -- soulshroud
{ id = 34091, count = 1, chance = 1, raro = true }, -- soulhexer		
{ id = 27458, count = 1, chance = 1, raro = true }, -- rod dest
{ id = 39154, count = 1, chance = 1, raro = true }, -- arboreal tome
{ id = 39153, count = 1, chance = 1, raro = true }, -- arboreal crown
{ id = 39186, count = 1, chance = 1, raro = true }, -- charged arboreal ring
{ id = 43887, count = 1, chance = 1, raro = true }, -- sanguine  galoshes	
{ id = 43885, count = 1, chance = 1, raro = true }, -- sanguine rod		
            -- Adicione outros itens de druida aqui
        },
        sorcerer = {
{ id = 43884, count = 1, chance = 1, raro = true }, -- sanguine boots		
{ id = 47372, count = 1, chance = 1, raro = true }, -- amber wand
{ id = 27457, count = 1, chance = 1, raro = true }, -- wand dest
{ id = 39183, count = 1, chance = 1, raro = true }, -- charged arcanomancer sig
{ id = 39151, count = 1, chance = 1, raro = true }, -- arcanomancer regalia
{ id = 39152, count = 1, chance = 1, raro = true }, -- arcanomancer folio
{ id = 34095, count = 1, chance = 1, raro = true }, -- soulmantle
{ id = 34090, count = 1, chance = 1, raro = true }, -- soultaint
{ id = 34092, count = 1, chance = 1, raro = true }, -- soulshanks
{ id = 44055, count = 1, chance = 1, raro = true }, -- the dragon spirit shield
{ id = 44056, count = 1, chance = 1, raro = true }, -- the dragon spirit doll
{ id = 44759, count = 1, chance = 1, raro = true }, -- aurora's collection
{ id = 43882, count = 1, chance = 1, raro = true }, -- sanguine coil		
            -- Adicione outros itens de sorcerer aqui
        },
        knight = {
{ id = 34097, count = 1, chance = 1, raro = true }, -- pair of soulwalkers		
{ id = 27453, count = 1, chance = 1, raro = true }, -- mace of destruction
{ id = 27449, count = 1, chance = 1, raro = true }, -- blade of destruction
{ id = 27451, count = 1, chance = 1, raro = true }, -- axe dest
{ id = 27454, count = 1, chance = 1, raro = true }, -- hammer dest
{ id = 27452, count = 1, chance = 1, raro = true }, -- chopper dest
{ id = 27450, count = 1, chance = 1, raro = true }, -- slayer dest
{ id = 39177, count = 1, chance = 1, raro = true }, -- charged spirithorn ring
{ id = 39147, count = 1, chance = 1, raro = true }, -- spirithorn armor
{ id = 39148, count = 1, chance = 1, raro = true }, -- spirithorn helmet
{ id = 34086, count = 1, chance = 1, raro = true }, -- soulcrusher
{ id = 34084, count = 1, chance = 1, raro = true }, -- soulbiter
{ id = 34082, count = 1, chance = 1, raro = true }, -- soulcutter
{ id = 34085, count = 1, chance = 1, raro = true }, -- souleater
{ id = 34087, count = 1, chance = 1, raro = true }, -- soulmaimer
{ id = 34099, count = 1, chance = 1, raro = true }, -- soulbastion
{ id = 34083, count = 1, chance = 1, raro = true }, -- soulshredder
{ id = 22889, count = 1, chance = 1, raro = true }, -- shield of destiny
{ id = 25982, count = 1, chance = 1, raro = true }, -- mathmaster shield
{ id = 39759, count = 1, chance = 1, raro = true }, -- golden gods' twilight doll
{ id = 47369, count = 1, chance = 1, raro = true }, -- amber greataxe
{ id = 47374, count = 1, chance = 1, raro = true }, -- amber sabre
{ id = 47375, count = 1, chance = 1, raro = true }, -- amber axe
{ id = 47376, count = 1, chance = 1, raro = true }, -- amber cudgel
{ id = 47368, count = 1, chance = 1, raro = true }, -- amber slayer
{ id = 47370, count = 1, chance = 1, raro = true }, -- amber bludgeon
{ id = 43874, count = 1, chance = 1, raro = true }, -- sanguine battleaxe
{ id = 43872, count = 1, chance = 1, raro = true }, -- sanguine bludgeon
{ id = 43870, count = 1, chance = 1, raro = true }, -- sanguine razor
{ id = 43868, count = 1, chance = 1, raro = true }, -- sanguine hatchet
{ id = 43876, count = 1, chance = 1, raro = true }, -- sanguine legs
{ id = 43866, count = 1, chance = 1, raro = true }, -- sanguine cudgel
{ id = 43864, count = 1, chance = 1, raro = true }, -- sanguine blade		
            -- Adicione itens de knight aqui
        },
        paladin = {
{ id = 47371, count = 1, chance = 1, raro = true }, -- amber bow
{ id = 27455, count = 1, chance = 1, raro = true }, -- bow dest
{ id = 27456, count = 1, chance = 1, raro = true }, -- crossbow dest
{ id = 39180, count = 1, chance = 1, raro = true }, -- charged alicorn ring
{ id = 39150, count = 1, chance = 1, raro = true }, -- alicorn quiver
{ id = 39149, count = 1, chance = 1, raro = true }, -- alicorn headguard
{ id = 34094, count = 1, chance = 1, raro = true }, -- soulshell
{ id = 34089, count = 1, chance = 1, raro = true }, -- soulpiercer
{ id = 34088, count = 1, chance = 1, raro = true }, -- soulbleeder
{ id = 34098, count = 1, chance = 1, raro = true }, -- pair of soultalkers
{ id = 39761, count = 1, chance = 1, raro = true }, -- archery gods' twilight doll
{ id = 35909, count = 1, chance = 1, raro = true }, -- chaos critical dice
{ id = 16262, count = 1, chance = 1, raro = true }, -- dragon eye
{ id = 47377, count = 1, chance = 1, raro = true }, -- amber crossbow
{ id = 43877, count = 1, chance = 1, raro = true }, -- sanguine bow
{ id = 43879, count = 1, chance = 1, raro = true }, -- sanguine crossbow
{ id = 43881, count = 1, chance = 1, raro = true }, -- sanguine greaves		
            -- Adicione itens de paladin aqui
        },
        misc = {
{ id = 3215, count = math.random(25, 100), chance = 1, raro = true }, -- phoenix egg
{ id = 22720, count = math.random(1, 5), chance = 1, raro = true }, -- iron token
{ id = 43968, count = math.random(1, 5), chance = 1, raro = true }, -- bakra amalgamation
{ id = 39040, count = math.random(1, 5), chance = 1, raro = true }, -- fiery tear
{ id = 39543, count = math.random(1, 5), chance = 1, raro = true }, -- smoldering eye
{ id = 33928, count = math.random(1, 5), chance = 1, raro = true }, -- megalomania essence
{ id = 33925, count = math.random(1, 5), chance = 1, raro = true }, -- megalomania skull
{ id = 36796, count = math.random(1, 5), chance = 1, raro = true }, -- brainstealer brainwave
{ id = 36795, count = math.random(1, 5), chance = 1, raro = true }, -- brainstealer brain
{ id = 36794, count = math.random(1, 5), chance = 1, raro = true }, -- brainstealer tissue
{ id = 27619, count = math.random(1, 5), chance = 1, raro = true }, -- giant tentacle
{ id = 27621, count = math.random(1, 5), chance = 1, raro = true }, -- huge shell
{ id = 27627, count = math.random(1, 5), chance = 1, raro = true }, -- huge spiky snail shell
{ id = 16206, count = math.random(1, 5), chance = 1, raro = true }, -- abyssador lash
{ id = 16205, count = math.random(1, 5), chance = 1, raro = true }, -- gnomevil hat
{ id = 16136, count = math.random(1, 5), chance = 1, raro = true }, -- deathstrike snippet
{ id = 8153, count = 1, chance = 1, raro = true }, -- lootseller permission
{ id = 31633, count = 1, chance = 1, raro = true }, -- supreme cube 
{ id = 32226, count = 1, chance = 1, raro = true }, -- old radio forge 
{ id = 48240, count = 1, chance = 1, raro = true }, -- infinite food
{ id = 35376, count = 1, chance = 1, raro = true }, -- imbue orb
{ id = 8778, count = 1, chance = 8 }, -- jester doll
{ id = 25979, count = 1, chance = 8 }, -- draken doll
{ id = 9598, count = 1, chance = 1, raro = true }, -- whacking driller of fate
{ id = 9596, count = 1, chance = 1, raro = true }, -- squeezing gear of girlpower
{ id = 9594, count = 1, chance = 1, raro = true }, -- sneaky stabber of eliteness
{ id = 39693, count = 1, chance = 1, raro = true }, -- 25 years backpack
{ id = 36827, count = 1, chance = 1, raro = true }, -- drome cube
{ id = 18339, count = 1, chance = 1, raro = true }, -- Zaoan chess box
{ id = 24395, count = 1, chance = 1, raro = true }, -- birthday backpack
{ id = 36724, count = 1, chance = 1, raro = true }, -- strike enhancement  
{ id = 36723, count = 1, chance = 1, raro = true }, -- kooldown-aid  
{ id = 28484, count = math.random(1, 5), chance = 2 }, -- blueberry cupcake 
{ id = 9086, count = 1, chance = 1, raro = true }, -- blessed steak  
{ id = 36727, count = 1, chance = 1, raro = true }, -- wealth duplex  
{ id = 36725, count = 1, chance = 2 }, -- stamina extension  
{ id = 9079, count = 1, chance = 1, raro = true }, -- rotworm stew  
{ id = 28486, count = math.random(1, 10), chance = 2 }, -- lemon cupcake  
{ id = 28485, count = math.random(1, 5), chance = 2 }, -- strawberry cupcake  
{ id = 23541, count = 1, chance = 1, raro = true }, -- blue sphere  
{ id = 14674, count = 1, chance = 1, raro = true }, -- anniversary backpack
{ id = 19369, count = 1, chance = 1, raro = true }, -- eye of the storm
{ id = 14682, count = 1, chance = 1, raro = true }, -- Chayenne's magical key
{ id = 21445, count = 1, chance = 1, raro = true }, -- war backpack
{ id = 3278, count = 1, chance = 1, raro = true }, -- magic longsword
{ id = 20182, count = 1, chance = 1, raro = true }, -- ring of ending
{ id = 3423, count = 1, chance = 1, raro = true }, -- blessed shield
{ id = 3427, count = 1, chance = 1, raro = true }, -- rose shield
{ id = 30279, count = 1, chance = 1, raro = true }, -- frozen claw
{ id = 3438, count = 1, chance = 1, raro = true }, -- eagle shield
{ id = 3569, count = 1, chance = 1, raro = true }, -- white dress
{ id = 3246, count = 1, chance = 1, raro = true }, -- boots of waterwalkin
{ id = 3570, count = 1, chance = 1, raro = true }, -- ball gown
{ id = 3011, count = 1, chance = 1, raro = true }, -- crown
{ id = 3365, count = 1, chance = 1, raro = true }, -- golden helmet
{ id = 3402, count = 1, chance = 1, raro = true }, -- native armor
{ id = 3368, count = 1, chance = 1, raro = true }, -- winged helmet
{ id = 3395, count = 1, chance = 1, raro = true }, -- ceremonial mask
{ id = 3363, count = 1, chance = 1, raro = true }, -- dragon scale legs
{ id = 22870, count = 1, chance = 1, raro = true }, -- throwing star of Sula
{ id = 8030, count = 1, chance = 1, raro = true }, -- Elethriel's elemental bow
{ id = 8028, count = 1, chance = 1, raro = true }, -- Yol's bow
{ id = 8097, count = 1, chance = 1, raro = true }, -- solar axe
{ id = 8099, count = 1, chance = 1, raro = true }, -- dark trinity mace
{ id = 3325, count = 1, chance = 1, raro = true }, -- light mace
{ id = 8103, count = 1, chance = 1, raro = true }, -- epiphany
{ id = 3296, count = 1, chance = 1, raro = true }, -- warlord sword
{ id = 3343, count = 1, chance = 1, raro = true }, -- lich staff
{ id = 5785, count = 1, chance = 1, raro = true }, -- medal of honour  
{ id = 9802, count = 1, chance = 1, raro = true }, -- friendship amulet
{ id = 10476, count = 1, chance = 1, raro = true }, -- lucky clover amulet  
{ id = 12670, count = 1, chance = 1, raro = true }, -- star ring  
{ id = 44760, count = 1, chance = 1, raro = true }, -- mazot backpack
{ id = 49533, count = 1, chance = 1, raro = true }, -- dreadfire headpiece
{ id = 49534, count = 1, chance = 1, raro = true }, -- demonfang mask
{ id = 49531, count = 1, chance = 1, raro = true }, -- maliceforged helmet
{ id = 49532, count = 1, chance = 1, raro = true } -- hellstalker visor		
            -- Adicione itens diversos aqui
        }
    }
}

local chanceKnight = 15
local chanceDruid = 15
local chanceSorcerer = 15
local chancePaladin = 15
local chanceMisc = 40

local isRouletteRunning = false

local function addItemToPlayer(player, item)
    player:addItem(item.id, item.count)
    Game.broadcastMessage(player:getName() .. " ganhou um " .. ItemType(item.id):getName() .. " na roleta!", MESSAGE_GAME_HIGHLIGHT)
    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
end

local function getRandomItemFromTable(tableItems)
    local totalWeight = 0
    for _, item in ipairs(tableItems) do
        totalWeight = totalWeight + item.chance
    end

    local randomWeight = math.random() * totalWeight
    local cumulativeWeight = 0
    for _, item in ipairs(tableItems) do
        cumulativeWeight = cumulativeWeight + item.chance
        if randomWeight <= cumulativeWeight then
            return item
        end
    end
end

local function getRandomItem()
    local totalChance = chanceKnight + chanceDruid + chanceSorcerer + chancePaladin + chanceMisc
    local randomChance = math.random(1, totalChance)

    local cumulativeChance = 0

    cumulativeChance = cumulativeChance + chanceKnight
    if randomChance <= cumulativeChance then
        return getRandomItemFromTable(config.items.knight)
    end

    cumulativeChance = cumulativeChance + chanceDruid
    if randomChance <= cumulativeChance then
        return getRandomItemFromTable(config.items.druid)
    end

    cumulativeChance = cumulativeChance + chanceSorcerer
    if randomChance <= cumulativeChance then
        return getRandomItemFromTable(config.items.sorcerer)
    end

    cumulativeChance = cumulativeChance + chancePaladin
    if randomChance <= cumulativeChance then
        return getRandomItemFromTable(config.items.paladin)
    end

    return getRandomItemFromTable(config.items.misc)
end

local function moveItems()
    for i = #config.positions, 2, -1 do
        local tile = Tile(config.positions[i - 1])
        local item = tile and tile:getTopDownItem()
        if item then
            item:moveTo(config.positions[i])
            --Position(config.positions[i]):sendMagicEffect(CONST_ME_MAGIC_GREEN)
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
    local steps = 35  -- Número de passos que a roleta dará antes de parar
    local interval = 30  -- Intervalo

    local currentItem = getRandomItem()
    createItemWithEffect(config.positions[1], currentItem)

    for i = 1, steps do
        addEvent(function()
            moveItems()
            if i == steps then
                local winningItem = Tile(Position(config.positions[5])):getTopDownItem()
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
                currentItem = getRandomItem()
                createItemWithEffect(config.positions[1], currentItem)
            end
        end, i * interval)

        -- Aumentar o intervalo para simular a desaceleração
        interval = interval + 10
    end
end

local rouletteLever = Action()

function rouletteLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if isRouletteRunning then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Roleta funcionando. Por favor, espere.")
        return false
    end

    if item.actionid == config.actionId then
        if player:removeItem(config.requiredItemId, 1) then
            clearItems()
            rouletteAction(player)
            return true
        else
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Precisa de um item especial para acionar a roleta.")
            return false
        end
    end
    return false
end

rouletteLever:aid(config.actionId)
rouletteLever:register()