-- SPIRITTHORN ARMOR REWARD
local spiritthornArmorReward = Action()

function spiritthornArmorReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39147, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um spiritthorn armor."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

spiritthornArmorReward:position({ x = 1653, y = 1895, z = 7 }) --(1653, 1895, 7)
spiritthornArmorReward:register()

-- SPIRITTHORN HELMET REWARD
local spiritthornHelmetReward = Action()

function spiritthornHelmetReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39148, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um spiritthorn helmet."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

spiritthornHelmetReward:position({ x = 1651, y = 1896, z = 7 }) --(1651, 1896, 7)
spiritthornHelmetReward:register()

-- CHARGED SPIRITTHORN RING REWARD
local chargedSpiritthornRingReward = Action()

function chargedSpiritthornRingReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39177, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um charged spiritthorn ring."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

chargedSpiritthornRingReward:position({ x = 1655, y = 1894, z = 7 }) --(1655, 1894, 7)
chargedSpiritthornRingReward:register()

-- ALICORN HEADGUARD REWARD
local alicornHeadguardReward = Action()

function alicornHeadguardReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39149, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um alicorn headguard."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

alicornHeadguardReward:position({ x = 1651, y = 1887, z = 7 }) --(1651, 1887, 7)
alicornHeadguardReward:register()

-- ALICORN QUIVER REWARD
local alicornQuiverReward = Action()

function alicornQuiverReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39150, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um alicorn quiver."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

alicornQuiverReward:position({ x = 1653, y = 1888, z = 7 }) --(1653, 1888, 7)
alicornQuiverReward:register()

-- CHARGED ALICORN RING REWARD
local chargedAlicornRingReward = Action()

function chargedAlicornRingReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39180, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um charged alicorn ring."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

chargedAlicornRingReward:position({ x = 1655, y = 1889, z = 7 }) --(1655, 1889, 7)
chargedAlicornRingReward:register()

-- ARCANOMANCER REGALIA REWARD
local arcanomancerRegaliaReward = Action()

function arcanomancerRegaliaReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39151, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um arcanomancer regalia."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

arcanomancerRegaliaReward:position({ x = 1645, y = 1894, z = 7 }) --(1645, 1894, 7)
arcanomancerRegaliaReward:register()

-- ARCANOMANCER FOLIO REWARD
local arcanomancerFolioReward = Action()

function arcanomancerFolioReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39152, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um arcanomancer folio."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

arcanomancerFolioReward:position({ x = 1647, y = 1895, z = 7 }) --(1647, 1895, 7)
arcanomancerFolioReward:register()

-- CHARGED ARCANOMANCER SIGIL REWARD
local chargedArcanomancerSigilReward = Action()

function chargedArcanomancerSigilReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39183, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um charged arcanomancer sigil."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

chargedArcanomancerSigilReward:position({ x = 1649, y = 1896, z = 7 }) --(1649, 1896, 7)
chargedArcanomancerSigilReward:register()

-- ARBOREAL CROWN REWARD
local arborealCrownReward = Action()

function arborealCrownReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39153, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um arboreal crown."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

arborealCrownReward:position({ x = 1645, y = 1889, z = 7 }) --(1645, 1889, 7)
arborealCrownReward:register()

-- ARBOREAL TOME REWARD
local arborealTomeReward = Action()

function arborealTomeReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39154, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um arboreal tome."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

arborealTomeReward:position({ x = 1647, y = 1888, z = 7 }) --(1647, 1888, 7)
arborealTomeReward:register()

-- CHARGED ARBOREAL RING REWARD
local chargedArborealRingReward = Action()

function chargedArborealRingReward.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:kv():get("quest-primalordeal") ~= 1 then
		player:addItem(39186, 1)
		player:kv():set("quest-primalordeal", 1)
		local message = "O jogador " .. player:getName() .. " completou a primal ordeal quest e ganhou um charged arboreal ring."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	end
	return true
end

chargedArborealRingReward:position({ x = 1649, y = 1887, z = 7 }) --(1649, 1887, 7)
chargedArborealRingReward:register()