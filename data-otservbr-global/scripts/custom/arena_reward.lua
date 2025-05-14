local tinderReward = Action()

-- Supondo que Player.depositMoney já esteja definida em outro arquivo.
function tinderReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = player:getStorageValue(453565651409)
    local waveCompleted = storageValue - 1
    local expBase = 1000000 * (waveCompleted - 1)
    local charmBase = (waveCompleted - 1)
    local moneyAmount = 300000 * waveCompleted -- Calcula o valor do dinheiro

    if storageValue <= 1 then
        player:setStorageValue(453565651409, -1)
        player:say("You have no reward here! Get out!", TALKTYPE_MONSTER_YELL)
    else
        player:setStorageValue(453565651409, -1)
        local message = string.format("Success! Reward collected from wave %d.", waveCompleted)
        player:say(message, TALKTYPE_MONSTER_YELL)

        player:addItemStoreInboxEx(Game.createItem(23487, waveCompleted - 1), true, false)

        -- Usa Bank.credit em vez de player:depositMoney
        if Bank.credit(player, moneyAmount) then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received " .. moneyAmount .. " gold coins in your bank account.")
        else
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Failed to add " .. moneyAmount .. " gold coins.")
        end

        player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false)
        player:addExperience(expBase, true)

        -- Adiciona itens específicos para waves 6 e acima
        if storageValue >= 6 then
            player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
            if storageValue >= 6 and storageValue <= 10 then
                player:addItemStoreInboxEx(Game.createItem(22720, 1), true, false) --forge token
            elseif storageValue > 10 then
                player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token
            end
        end
    end
end

tinderReward:aid(24263)
tinderReward:register()
