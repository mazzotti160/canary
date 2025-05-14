local moonlightCrystals = Action()

-- Lista de itemids permitidos
local allowedItemIds = {
	--grand sanguines--
    [43865] = true,
    [43867] = true,
    [43869] = true,
    [43871] = true,
    [43873] = true,
    [43875] = true,
    [43878] = true,
    [43880] = true,
    [43883] = true,
    [43886] = true,
	--inferniarchs--
    [49520] = true,
    [49858] = true,
    [49859] = true,
    [49860] = true,
    [49522] = true,
    [49861] = true,
    [49862] = true,
    [49863] = true,
    [49523] = true,
    [49864] = true,
    [49865] = true,
    [49866] = true,
    [49524] = true,
    [49867] = true,
    [49868] = true,
    [49869] = true,
    [49527] = true,
    [49876] = true,
    [49877] = true,
    [49878] = true,
    [49530] = true,
    [49879] = true,
    [49880] = true,
    [49881] = true,
    [49525] = true,
    [49870] = true,
    [49871] = true,
    [49872] = true,
    [49526] = true,
    [49873] = true,
    [49874] = true,
    [49875] = true,
    [49528] = true,
    [49882] = true,
    [49883] = true,
    [49884] = true,
    [49529] = true,
    [49885] = true,
    [49886] = true,
    [49887] = true	
}

function moonlightCrystals.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local itemid = item:getId()
    local targetid = target:getId()

    -- Verifica se o item alvo pode ser usado
    if not allowedItemIds[targetid] then
        player:say("This is not a craft item! Only Grand Sanguine and Inferniarchs allowed!", TALKTYPE_MONSTER_SAY)
        return true
    end

    local tieratual = target:getTier()
    local valor = player:kv():get("kv-tier-mazot") or 0

    if itemid == 27847 then
        -- Item ainda vazio, remove tier e salva
        if valor > 0 then
            player:say("You already have a saved tier. Use the charged crystal first.", TALKTYPE_MONSTER_SAY)
            return true
        end

        if tieratual >= 1 and tieratual <= 10 then
            player:kv():set("kv-tier-mazot", tieratual)
            target:setTier(0) -- apenas reseta o tier
           -- player:addItem(28708, 1) -- cristal carregado
            item:transform(28708) -- remove o cristal vazio
            player:say("Tier " .. tieratual .. " removed and saved to crystal!", TALKTYPE_MONSTER_SAY)
        else
            player:say("This item doesn't have a tier to save.", TALKTYPE_MONSTER_SAY)
        end
        return true

    elseif itemid == 28708 then
        -- Item carregado, aplica o tier salvo
        local tierToApply = tonumber(valor)
        if not tierToApply or tierToApply < 1 or tierToApply > 10 then
            player:say("No saved tier to apply.", TALKTYPE_MONSTER_SAY)
            return true
        end

        if tieratual >= 1 and tieratual <= 10 then
            player:say("This item already has a tier! You can only apply saved tier to an item without tier.", TALKTYPE_MONSTER_SAY)
            return true
        end

        target:setTier(tierToApply)
        player:kv():set("kv-tier-mazot", 0)
        player:say("Tier " .. tierToApply .. " applied to item! Move it around your backpack to update.", TALKTYPE_MONSTER_SAY)
        item:remove(1) -- remove o cristal carregado
        return true
    end

    return true
end


moonlightCrystals:id(27847, 28708) -- registra ambos os itens
moonlightCrystals:register()
