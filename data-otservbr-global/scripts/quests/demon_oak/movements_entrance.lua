local entrance = MoveEvent()

function entrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.Quest.U8_2.TheDemonOak.Done) >= 1 then
		player:teleportTo(DEMON_OAK_KICK_POSITION)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	elseif player:getLevel() < 120 then
		player:say("LEAVE LITTLE FISH, YOU ARE NOT WORTH IT!", TALKTYPE_MONSTER_YELL, false, player, DEMON_OAK_POSITION)
		player:teleportTo(DEMON_OAK_KICK_POSITION)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	elseif player:getItemCount(919) == 0 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Go talk with Odralk and get the Hallowed Axe to kill The Demon Oak.")		
				player:teleportTo(DEMON_OAK_KICK_POSITION)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)		
				return true		
		end	

	if #Game.getSpectators(DEMON_OAK_POSITION, false, true, 9, 9, 6, 6) == 0 then
		player:teleportTo(DEMON_OAK_ENTER_POSITION)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:setStorageValue(Storage.Quest.U8_2.TheDemonOak.Progress, 1)
		player:say("I AWAITED YOU! COME HERE AND GET YOUR REWARD!", TALKTYPE_MONSTER_YELL, false, player, DEMON_OAK_POSITION)
	else
		player:teleportTo(DEMON_OAK_KICK_POSITION)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

entrance:type("stepin")
entrance:uid(9000)
entrance:register()
