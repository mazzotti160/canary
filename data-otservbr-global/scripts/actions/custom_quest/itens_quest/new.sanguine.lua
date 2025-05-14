-- SANGUINE BLADE REWARD
local sanguineBladeReward = Action()

function sanguineBladeReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43864, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou uma sanguine blade."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineBladeReward:position({ x = 1636, y = 1849, z = 6 }) --(1636, 1849, 6)
sanguineBladeReward:register()

-- SANGUINE CUDGEL REWARD
local sanguineCudgelReward = Action()

function sanguineCudgelReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43866, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine cudgel."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineCudgelReward:position({ x = 1635, y = 1852, z = 6 }) --(1635, 1852, 6)
sanguineCudgelReward:register()

-- SANGUINE HATCHET REWARD
local sanguineHatchetReward = Action()

function sanguineHatchetReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43868, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine hatchet."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineHatchetReward:position({ x = 1633, y = 1854, z = 6 }) --(1633, 1854, 6)
sanguineHatchetReward:register()

-- SANGUINE RAZOR REWARD
local sanguineRazorReward = Action()

function sanguineRazorReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43870, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou uma sanguine razor."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineRazorReward:position({ x = 1626, y = 1849, z = 6 }) --(1626, 1849, 6)
sanguineRazorReward:register()

-- SANGUINE BLUDGEON REWARD
local sanguineBludgeonReward = Action()

function sanguineBludgeonReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43872, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine bludgeon."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineBludgeonReward:position({ x = 1627, y = 1852, z = 6 }) --(1627, 1852, 6)
sanguineBludgeonReward:register()

-- SANGUINE BATTLEAXE REWARD
local sanguineBattleaxeReward = Action()

function sanguineBattleaxeReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43874, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine battleaxe."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineBattleaxeReward:position({ x = 1629, y = 1854, z = 6 }) --(1629, 1854, 6)
sanguineBattleaxeReward:register()

-- SANGUINE BOW REWARD
local sanguineBowReward = Action()

function sanguineBowReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43877, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine bow."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineBowReward:position({ x = 1627, y = 1846, z = 6 }) --(1627, 1846, 6)
sanguineBowReward:register()

-- SANGUINE CROSSBOW REWARD
local sanguineCrossbowReward = Action()

function sanguineCrossbowReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43879, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou uma sanguine crossbow."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineCrossbowReward:position({ x = 1635, y = 1846, z = 6 }) --(1635, 1846, 6)
sanguineCrossbowReward:register()

-- SANGUINE COIL REWARD
local sanguineCoilReward = Action()

function sanguineCoilReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43882, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou um sanguine coil."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineCoilReward:position({ x = 1633, y = 1844, z = 6 }) --(1633, 1844, 6)
sanguineCoilReward:register()

-- SANGUINE ROD REWARD
local sanguineRodReward = Action()

function sanguineRodReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-rottenblood") ~= 1 then
		player:addItem(43885, 1)
		player:kv():set("quest-rottenblood", 1)
		local message = "O jogador " .. player:getName() .. " completou a rotten blood quest e ganhou uma sanguine rod."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

sanguineRodReward:position({ x = 1629, y = 1844, z = 6 }) --(1629, 1844, 6)
sanguineRodReward:register()