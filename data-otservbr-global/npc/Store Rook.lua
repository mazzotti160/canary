local internalNpcName = "Store Rook"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
lookType = 1210,
lookHead = 79,
lookBody = 79,
lookLegs = 79,
lookFeet = 79,
lookAddons = 3
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.currency = 22118

npcConfig.shop = {
{ itemName = "Infinite Food", clientId = 48240, buy = 250 },
{ itemName = "Supreme Cube Teleporter", clientId = 31633, buy = 900 },
{ itemName = "Roleta", clientId = 19082, buy = 150 },
{ itemName = "Squeezing Gear of Girlpower", clientId = 9596, buy = 100 },
{ itemName = "Sneaky Stabber of Eliteness", clientId = 9594, buy = 100 },
{ itemName = "Whacking Driller of Fate", clientId = 9598, buy = 100 },
{ itemName = "Galthens Sachel", clientId = 36813, buy = 100 },
}

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Im selling mount dolls!" },
	{ text = "Use a mount doll to obtain your new mount!" },
	{ text = "Crystals! Bring your crystals!" },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end


npcHandler:setMessage(MESSAGE_GREET, "Blessings, Player! How may I be of service? Do you wanna buy mount doll for some red teleport crystals?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
