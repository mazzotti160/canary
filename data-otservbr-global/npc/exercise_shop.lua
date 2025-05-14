local internalNpcName = "Exercise Shop"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 0

npcConfig.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 120,
	lookFeet = 115,
	lookAddons = 3,
	lookMount = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Exercises! Exercises!" },
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

-- Basic
npcHandler:setMessage(MESSAGE_GREET, "Oh, please come in, |PLAYERNAME|. What do you need?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, just browse through my wares. {Footballs} have to be purchased separately.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	--{ itemName = "all loot in loot pouch", clientId = 23721, sell = 1 },
--start exercise infinite
			{ itemName = "training shield", clientId = 44064, buy = 1, subType = 1 },
			{ itemName = "training sword", clientId = 28540, buy = 1, subType = 1 },
			{ itemName = "training axe", clientId = 28541, buy = 1, subType = 1 },
			{ itemName = "training club", clientId = 28542, buy = 1, subType = 1 },
			{ itemName = "training bow", clientId = 28543, buy = 1, subType = 1 },
			{ itemName = "training rod", clientId = 28544, buy = 1, subType = 1 },
			{ itemName = "training wand", clientId = 28545, buy = 1, subType = 1 },			
--exercises
			{ itemName = "exercise axe", clientId = 28553, buy = 262500, subType = 500 },
			{ itemName = "exercise bow", clientId = 28555, buy = 262500, subType = 500 },
			{ itemName = "exercise club", clientId = 28554, buy = 262500, subType = 500 },
			{ itemName = "exercise rod", clientId = 28556, buy = 262500, subType = 500 },
			{ itemName = "exercise sword", clientId = 28552, buy = 262500, subType = 500 },
			{ itemName = "exercise wand", clientId = 28557, buy = 262500, subType = 500 },
			{ itemName = "durable exercise axe", clientId = 35280, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise club", clientId = 35281, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise rod", clientId = 35283, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise sword", clientId = 35279, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise wand", clientId = 35284, buy = 945000, subType = 1800 },
			{ itemName = "lasting exercise axe", clientId = 35286, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise club", clientId = 35287, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise rod", clientId = 35289, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise sword", clientId = 35285, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise wand", clientId = 35290, buy = 7560000, subType = 14400 },
			{ itemName = "durable exercise shield", clientId = 44066, buy = 945000, count = 1800 },
			{ itemName = "exercise shield", clientId = 44065, buy = 262500, count = 500 },	
			{ itemName = "lasting exercise shield", clientId = 44067, buy = 7560000, count = 14400 },				
			
--end vendas
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

npcType:register(npcConfig)
