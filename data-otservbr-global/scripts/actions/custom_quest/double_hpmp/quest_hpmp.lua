local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local effectStorage = 4591046545002
    local effectDuration = 1 * 24 * 60 * 60 -- 1 dias em segundos
    local currentTime = os.time()

    if player:getStorageValue(effectStorage) >= currentTime then
        -- Efeito já ativo, reseta e adiciona 1 dias
        player:say("Your double health and mana effect has been reset and renewed for 24 hours.", TALKTYPE_MONSTER_SAY)
        player:setStorageValue(effectStorage, currentTime + effectDuration)
    else
        -- Efeito não ativo, aplica 1 dias normalmente
        player:say("Congratulations! Your health and mana have been doubled for 24 hours.", TALKTYPE_MONSTER_SAY)
        player:setStorageValue(effectStorage, currentTime + effectDuration)
    end

    return true
end

dust:position({ x = 1707, y = 1630, z = 3 })
dust:register()