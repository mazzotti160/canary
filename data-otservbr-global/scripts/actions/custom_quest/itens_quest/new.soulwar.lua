--SOULCUTTER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34082, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulcutter."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1674, y = 1859, z = 7 }) --(1674, 1859, 7)
graveDangerRoll:register()

--SOULBITTER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34084, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulbiter."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1673, y = 1857, z = 7 }) --(1673, 1857, 7)
graveDangerRoll:register()

--SOULCRUSHER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34086, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulcrusher."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1672, y = 1855, z = 7 }) --(1672, 1855, 7)
graveDangerRoll:register()

--SOULTAINTER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34090, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soultainter."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1673, y = 1853, z = 7 }) --(1673, 1853, 7)
graveDangerRoll:register()

--SOULBLEEDER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34088, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulbleeder."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1674, y = 1851, z = 7 }) --(1674, 1851, 7)
graveDangerRoll:register()

--SOULPIERCER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34089, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulpiercer."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1680, y = 1851, z = 7 }) --(1680, 1851, 7)
graveDangerRoll:register()

--SOULHEXER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34091, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulhexer."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1681, y = 1853, z = 7 }) --(1681, 1853, 7)
graveDangerRoll:register()

--SOULMAIMER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34087, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulmaimer."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1682, y = 1855, z = 7 }) --(1682, 1855, 7)
graveDangerRoll:register()

--SOULEATER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34085, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um souleater."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1681, y = 1857, z = 7 }) --(1681, 1857, 7)
graveDangerRoll:register()

--SOULSHREDDER
local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)

	local player = creature:getPlayer()
	if not player then
		return false
	end
	
		if player:kv():get("quest-soulwar") ~= 1 then
			player:addItem(34083, 1)	
			player:kv():set("quest-soulwar", 1)
		local message = "o jogador " .. player:getName() .. " completou a soulwar quest e ganhou um soulshredder."
			Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
		else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
		return false
		end	
end		

graveDangerRoll:position({ x = 1680, y = 1859, z = 7 }) --(1680, 1859, 7)
graveDangerRoll:register()