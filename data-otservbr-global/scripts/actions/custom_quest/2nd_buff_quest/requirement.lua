local checkPremium = MoveEvent()
function checkPremium.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    -- Check requirements (4535656514, 1)
    if player:getStorageValue(4535656514) >= 1 then
      --  player:say("GZ!.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
	else
	    player:say("You need to finish 1st buff pot quest!", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
        player:teleportTo(fromPosition)
	   -- player:teleportTo({ x = 2152, y = 1990, z = 7 })	--(2152, 1990, 7)	
        fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
        return true
    end
    return true
end


checkPremium:position({ x = 32369, y = 32233, z = 4 }) -- ((32369, 32233, 4)
checkPremium:register()