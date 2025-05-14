local internalNpcName = "Crafter"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1662,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.currency = 22723

npcConfig.shop = {
--selling
--	{ itemName = "dark wizards crown", clientId = 22153, buy = 500 }, 
--	{ itemName = "green dragon", clientId = 44056, buy = 500 }, 
--	{ itemName = "green dragon shield", clientId = 44055, buy = 500 }, 
--	{ itemName = "epic wisdom", clientId = 12809, buy = 500 }, 
--	{ itemName = "purple beaver", clientId = 44759, buy = 500 }, 
--	{ itemName = "tibiapedia", clientId = 34266, buy = 500 }, 
--	{ itemName = "dragon eye", clientId = 16262, buy = 500 }, 
--	{ itemName = "gods twilight paladin doll", clientId = 39761, buy = 500 }, 
--	{ itemName = "chaos critical dice", clientId = 35909, buy = 500 }, 
--	{ itemName = "shield of destiny", clientId = 22889, buy = 500 }, 
--	{ itemName = "gods twilight knight doll", clientId = 39759, buy = 500 }, 
--	{ itemName = "mathmaster shield", clientId = 25982, buy = 500 },
--buying
--sanguine
    { itemName = "sanguine blade", clientId = 43864, sell = 16 },
    { itemName = "sanguine cudgel", clientId = 43866, sell = 16 },
    { itemName = "sanguine hatchet", clientId = 43868, sell = 16 },
    { itemName = "sanguine razor", clientId = 43870, sell = 16 },
    { itemName = "sanguine bludgeon", clientId = 43872, sell = 16 },
    { itemName = "sanguine battleaxe", clientId = 43874, sell = 16 },
    { itemName = "sanguine legs", clientId = 43876, sell = 16 },
    { itemName = "sanguine bow", clientId = 43877, sell = 16 },
    { itemName = "sanguine crossbow", clientId = 43879, sell = 16 },
    { itemName = "sanguine greaves", clientId = 43881, sell = 16 },
    { itemName = "sanguine coil", clientId = 43882, sell = 16 },
    { itemName = "sanguine boots", clientId = 43884, sell = 16 },
    { itemName = "sanguine rod", clientId = 43885, sell = 16 },
    { itemName = "sanguine galoshes", clientId = 43887, sell = 16 },
--soul // primal //amber
{ itemName = "amber axe", clientId = 47375, sell = 8 },
{ itemName = "amber greataxe", clientId = 47369, sell = 8 },
{ itemName = "amber slayer", clientId = 47368, sell = 8 },
{ itemName = "amber sabre", clientId = 47374, sell = 8 },
{ itemName = "amber cudgel", clientId = 47376, sell = 8 },
{ itemName = "amber bludgeon", clientId = 47370, sell = 8 },
{ itemName = "amber bow", clientId = 47371, sell = 8 },
{ itemName = "amber crossbow", clientId = 47377, sell = 8 },
{ itemName = "amber wand", clientId = 47372, sell = 8 },
{ itemName = "amber rod", clientId = 47373, sell = 8 },
    { itemName = "soulcutter", clientId = 34082, sell = 8 },
    { itemName = "soulshredder", clientId = 34083, sell = 8 },
    { itemName = "soulbiter", clientId = 34084, sell = 8 },
    { itemName = "souleater", clientId = 34085, sell = 8 },
    { itemName = "soulcrusher", clientId = 34086, sell = 8 },
    { itemName = "soulmaimer", clientId = 34087, sell = 8 },
    { itemName = "pair of soulwalkers", clientId = 34097, sell = 8 },
    { itemName = "soulbastion", clientId = 34099, sell = 8 },
    { itemName = "soulbleeder", clientId = 34088, sell = 8 },
    { itemName = "soulpiercer", clientId = 34089, sell = 8 },
    { itemName = "soulshell", clientId = 34094, sell = 8 },
    { itemName = "pair of soulstalkers", clientId = 34098, sell = 8 },
    { itemName = "soultainter", clientId = 34090, sell = 8 },
    { itemName = "soulshanks", clientId = 34092, sell = 8 },
    { itemName = "soulmantle", clientId = 34095, sell = 8 },
    { itemName = "soulhexer", clientId = 34091, sell = 8 },
    { itemName = "soulstrider", clientId = 34093, sell = 8 },
    { itemName = "soulshroud", clientId = 34096, sell = 8 },
    { itemName = "spiritthorn armor", clientId = 39147, sell = 8 },
    { itemName = "spiritthorn helmet", clientId = 39148, sell = 8 },
    { itemName = "charged spiritthorn ring", clientId = 39177, sell = 8 },
    { itemName = "alicorn headguard", clientId = 39149, sell = 8 },
    { itemName = "alicorn quiver", clientId = 39150, sell = 8 },
    { itemName = "charged alicorn ring", clientId = 39180, sell = 8 },
    { itemName = "arcanomancer regalia", clientId = 39151, sell = 8 },
    { itemName = "arcanomancer folio", clientId = 39152, sell = 8 },
    { itemName = "charged arcanomancer sigil", clientId = 39183, sell = 8 },
    { itemName = "arboreal crown", clientId = 39153, sell = 8 },
    { itemName = "arboreal tome", clientId = 39154, sell = 8 },
    { itemName = "charged arboreal ring", clientId = 39186, sell = 8 },
--falcons//lion//cobra//timira//monster//brainstealer//ratmiral
    { itemName = "Eldritch shield", clientId = 36656, sell = 4 },
    { itemName = "Eldritch claymore", clientId = 36657, sell = 4 },
    { itemName = "Gilded eldritch claymore", clientId = 36658, sell = 4 },
    { itemName = "Eldritch warmace", clientId = 36659, sell = 4 },
    { itemName = "Gilded eldritch warmace", clientId = 36660, sell = 4 },
    { itemName = "Eldritch greataxe", clientId = 36661, sell = 4 },
    { itemName = "Gilded eldritch greataxe", clientId = 36662, sell = 4 },
    { itemName = "Eldritch cuirass", clientId = 36663, sell = 4 },
    { itemName = "Eldritch bow", clientId = 36664, sell = 4 },
    { itemName = "Gilded eldritch bow", clientId = 36665, sell = 4 },
    { itemName = "Eldritch quiver", clientId = 36666, sell = 4 },
    { itemName = "Eldritch breeches", clientId = 36667, sell = 4 },
    { itemName = "Eldritch wand", clientId = 36668, sell = 4 },
    { itemName = "Gilded eldritch wand", clientId = 36669, sell = 4 },
    { itemName = "Eldritch cowl", clientId = 36670, sell = 4 },
    { itemName = "Eldritch hood", clientId = 36671, sell = 4 },
    { itemName = "Eldritch folio", clientId = 36672, sell = 4 },
    { itemName = "Eldritch tome", clientId = 36673, sell = 4 },
    { itemName = "Eldritch rod", clientId = 36674, sell = 4 },
    { itemName = "Gilded eldritch rod", clientId = 36675, sell = 4 },
    { itemName = "Falcon circlet", clientId = 28714, sell = 4 },
    { itemName = "Falcon coif", clientId = 28715, sell = 4 },
    { itemName = "Falcon rod", clientId = 28716, sell = 4 },
    { itemName = "Falcon wand", clientId = 28717, sell = 4 },
    { itemName = "Falcon bow", clientId = 28718, sell = 4 },
    { itemName = "Falcon plate", clientId = 28719, sell = 4 },
    { itemName = "Falcon greaves", clientId = 28720, sell = 4 },
    { itemName = "Falcon shield", clientId = 28721, sell = 4 },
    { itemName = "Falcon escutcheon", clientId = 28722, sell = 4 },
    { itemName = "Falcon longsword", clientId = 28723, sell = 4 },
    { itemName = "Falcon battleaxe", clientId = 28724, sell = 4 },
    { itemName = "Falcon mace", clientId = 28725, sell = 4 },
    { itemName = "Mutant bone kilt", clientId = 40595, sell = 4 },
    { itemName = "Alchemists notepad", clientId = 40594, sell = 4 },
    { itemName = "Mutant bone boots", clientId = 40593, sell = 4 },
    { itemName = "Alchemists boots", clientId = 40592, sell = 4 },
    { itemName = "Mutated skin legs", clientId = 40590, sell = 4 },
    { itemName = "Stitched mutant hide legs", clientId = 40589, sell = 4 },
    { itemName = "Antler horn helmet", clientId = 40588, sell = 4 },
    { itemName = "Mutated skin armor", clientId = 40591, sell = 4 },
    { itemName = "Lion ring", clientId = 34080, sell = 4 },
    { itemName = "Lion longbow", clientId = 34150, sell = 4 },
    { itemName = "Lion rod", clientId = 34151, sell = 4 },
    { itemName = "Lion wand", clientId = 34152, sell = 4 },
    { itemName = "Lion spellbook", clientId = 34153, sell = 4 },
    { itemName = "Lion shield", clientId = 34154, sell = 4 },
    { itemName = "Lion longsword", clientId = 34155, sell = 4 },
    { itemName = "Lion spangehelmet", clientId = 34156, sell = 4 },
    { itemName = "Lion plate", clientId = 34157, sell = 4 },
    { itemName = "Lion amulet", clientId = 34158, sell = 4 },
    { itemName = "Lion axe", clientId = 34253, sell = 4 },
    { itemName = "Lion hammer", clientId = 34254, sell = 4 },
    { itemName = "Midnight Tunic", clientId = 39165, sell = 4 },
    { itemName = "Midnight Sarong", clientId = 39167, sell = 4 },
    { itemName = "Naga Sword", clientId = 39155, sell = 4 },
    { itemName = "Naga Axe", clientId = 39156, sell = 4 },
    { itemName = "Naga Club", clientId = 39157, sell = 4 },
    { itemName = "Naga Wand", clientId = 39162, sell = 4 },
    { itemName = "Naga Rod", clientId = 39163, sell = 4 },
    { itemName = "Naga Crossbow", clientId = 39159, sell = 4 },
    { itemName = "Naga Quiver", clientId = 39160, sell = 4 },
    { itemName = "Dawnfire Sherwani", clientId = 39164, sell = 4 },
    { itemName = "Dawnfire Pantaloons", clientId = 39166, sell = 4 },
   -- { itemName = "Turtle Amulet", clientId = 39233, sell = 4 },
    { itemName = "Feverbloom Boots", clientId = 39161, sell = 4 },
    { itemName = "Frostflower Boots", clientId = 39158, sell = 4 },
    { itemName = "Junge flail", clientId = 35514, sell = 4 },
    { itemName = "Throwing axe", clientId = 35515, sell = 4 },
    { itemName = "Exotic legs", clientId = 35516, sell = 4 },
    { itemName = "Bast legs", clientId = 35517, sell = 4 },
    { itemName = "Jungle bow", clientId = 35518, sell = 4 },
    { itemName = "Makeshift boots", clientId = 35519, sell = 4 },
    { itemName = "Make-do boots", clientId = 35520, sell = 4 },
    { itemName = "Jungle rod", clientId = 35521, sell = 4 },
    { itemName = "Jungle wand", clientId = 35522, sell = 4 },
    { itemName = "Exotic amulet", clientId = 35523, sell = 4 },
    { itemName = "Jungle quiver", clientId = 35524, sell = 4 },
    { itemName = "Cobra crossbow", clientId = 30393, sell = 4 },
    { itemName = "Cobra boots", clientId = 30394, sell = 4 },
    { itemName = "Cobra club", clientId = 30395, sell = 4 },
    { itemName = "Cobra axe", clientId = 30396, sell = 4 },
    { itemName = "Cobra hood", clientId = 30397, sell = 4 },
    { itemName = "Cobra sword", clientId = 30398, sell = 4 },
    { itemName = "Cobra wand", clientId = 30399, sell = 4 },
    { itemName = "Cobra rod", clientId = 30400, sell = 4 },
--class 3 agora
    { itemName = "Cobra amulet", clientId = 31631, sell = 4 },
    { itemName = "Dream shroud", clientId = 29423, sell = 2 },
    { itemName = "Pair of dreamwalkers", clientId = 29424, sell = 2 },
    { itemName = "Living armor", clientId = 29418, sell = 2 },
    { itemName = "Living vine bow", clientId = 29417, sell = 2 },
    { itemName = "Winterblade", clientId = 29422, sell = 2 },
    { itemName = "Summerblade", clientId = 29421, sell = 2 },
    { itemName = "Brain in a jar", clientId = 29426, sell = 2 },
    { itemName = "Energized limb", clientId = 29425, sell = 2 },
    { itemName = "Resizer", clientId = 29419, sell = 2 },
    { itemName = "Shoulder plate", clientId = 29420, sell = 2 },
    { itemName = "Dark whispers", clientId = 29427, sell = 2 },
 --   { itemName = "Sleep shawl", clientId = 30342, sell = 2 },
    { itemName = "Fabulous legs", clientId = 32617, sell = 2 },
    { itemName = "Soulful legs", clientId = 32618, sell = 2 },
    { itemName = "Ghost chestplate", clientId = 32628, sell = 2 },
    { itemName = "Pair of nightmare boots", clientId = 32619, sell = 2 },
    { itemName = "Phantasmal axe", clientId = 32616, sell = 2 },
    { itemName = "Ring of souls", clientId = 32635, sell = 2 },
    { itemName = "Gnome helmet", clientId = 27647, sell = 2 },
    { itemName = "Gnome armor", clientId = 27648, sell = 2 },
    { itemName = "Gnome legs", clientId = 27649, sell = 2 },
    { itemName = "Gnome sword", clientId = 27651, sell = 2 },
    { itemName = "Gnome shield", clientId = 27650, sell = 2 },
    { itemName = "Embrace of nature", clientId = 31579, sell = 2 },
    { itemName = "Terra helmet", clientId = 31577, sell = 2 },
    { itemName = "Bear skin", clientId = 31578, sell = 2 },
    { itemName = "Bow of cataclysm", clientId = 31581, sell = 2 },
    { itemName = "Galea mortis", clientId = 31582, sell = 2 },
    { itemName = "Mortal mace", clientId = 31580, sell = 2 },
    { itemName = "Toga mortis", clientId = 31583, sell = 2 }
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
	--{ text = "Im selling addon dolls!" },
	--{ text = "Use an addon doll to obtain your new outfit!" },
	--{ text = "Tokens! Bring your tokens!" },
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


npcHandler:setMessage(MESSAGE_GREET, "Blessings, Player! How may I be of service? Do you wish to trade some minor tokens for an addon doll?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
