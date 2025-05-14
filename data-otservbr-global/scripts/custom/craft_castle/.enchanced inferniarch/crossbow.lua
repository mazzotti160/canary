local craftGrandSanguineCrossbow = Action()

-- Define a chance de sucesso (em porcentagem, ex: 80 para 80%)
local successChance = 13

-- Modo de teste: true para ignorar a necessidade de todos os itens, false para o comportamento normal
local testMode = false

function craftGrandSanguineCrossbow.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    -- Item principal (não será removido em caso de falha)
    local mainItemId = 49861 -- GS wand
    local mainItemCount = 1

    -- Recompensa
    local reward = {
        itemId = 49862 -- ID da Grand Sanguine Crossbow
    }

    -- Itens necessários (além do item principal)
    local requiredItems = {
        {id = 16206, count = 90}, -- abyssador lash
        {id = 16136, count = 90}, -- deathstrike snippet
        {id = 16205, count = 90}, -- gnomevil hat
        {id = 27621, count = 82}, -- huge shell
        {id = 27627, count = 82}, -- huge spiky snail shell
        {id = 27619, count = 82}, -- giant tentacle
        {id = 36796, count = 34}, -- brainstealer brainwave
        {id = 36795, count = 34}, -- brainstealer brain
        {id = 36794, count = 34}, -- brainstealer tissue
        {id = 39040, count = 21},    -- fiery tear
        {id = 39543, count = 21},    -- smoldering eye
        {id = 33928, count = 14},    -- megalomania essence
        {id = 33925, count = 14},    -- megalomania skull
        {id = 43968, count = 12},    -- bakragore amalgamation
        {id = 36793, count = 188},    -- abomination tongue
        {id = 22723, count = 345}    --titanium token
    }

    local missingItems = {}

    -- Verifica se o jogador possui o item principal (a menos que esteja em modo de teste)
    if not testMode and player:getItemCount(mainItemId) < mainItemCount then
        table.insert(missingItems, mainItemCount .. " " .. ItemType(mainItemId):getName())
    end

    -- Verifica se o jogador possui os outros itens necessários (a menos que esteja em modo de teste)
    if not testMode then
        for _, requiredItem in ipairs(requiredItems) do
            local itemCount = player:getItemCount(requiredItem.id)
            if itemCount < requiredItem.count then
                local missingCount = requiredItem.count - itemCount
                table.insert(missingItems, missingCount .. " " .. ItemType(requiredItem.id):getName())
            end
        end
    end

    -- Se faltam itens (e não estamos em modo de teste), envia mensagem e retorna
    if not testMode and #missingItems > 0 then
        player:sendTextMessage(MESSAGE_ADMINISTRATOR, "Missing items: " .. table.concat(missingItems, ", ") .. ".")
        return false
    end

    -- Gera um número aleatório entre 1 e 100
    local roll = math.random(100)

    -- Verifica se a criação foi bem-sucedida
    if roll <= successChance then
        -- Remove todos os itens necessários (se não estiver em modo de teste)
        if not testMode then
            player:removeItem(mainItemId, mainItemCount)
            for _, requiredItem in ipairs(requiredItems) do
                player:removeItem(requiredItem.id, requiredItem.count)
            end
        end

        -- Adiciona a recompensa
        player:addItem(reward.itemId, 1)
        player:sendTextMessage(MESSAGE_ADMINISTRATOR, "You successfully crafted a " .. ItemType(reward.itemId):getName() .. ".")

        local messageSuccess = "" .. player:getName() .. " successfully crafted a " .. ItemType(reward.itemId):getName() .. "."
        Game.broadcastMessage(messageSuccess, MESSAGE_GAME_HIGHLIGHT)
        return true
    else
        -- Remove apenas os itens secundários (se não estiver em modo de teste)
        if not testMode then
            for _, requiredItem in ipairs(requiredItems) do
                player:removeItem(requiredItem.id, requiredItem.count)
            end
        end

        -- Envia broadcast de falha
        local messageFail = "" .. player:getName() .. " tried to craft a " .. ItemType(reward.itemId):getName() .. " and failed! Good luck next time."
        Game.broadcastMessage(messageFail, MESSAGE_GAME_HIGHLIGHT)
        return false
    end
end

craftGrandSanguineCrossbow:position({ x = 32351, y = 32182, z = 4 })
craftGrandSanguineCrossbow:register()
