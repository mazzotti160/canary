local internalNpcName = "Arena Reseter"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 0

npcConfig.outfit = {
lookBody = 76, 
lookFeet = 56, 
lookHead = 114, 
lookLegs = 56, 
lookType = 268, 
lookAddons = 3 
}

npcConfig.flags = {
	floorchange = false,
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

local arenaCooldownKey = "arena-exp-cd" -- Chave KV do cooldown da arena
local resetCooldownKey = "arenaExpResetCooldown" -- Chave KV do cooldown do reset do NPC
local resetUsedKey = "arenaExpResetUsedTime" -- Chave KV para armazenar o timestamp do último reset
local resetTime = 20 * 60 * 60 -- 20 horas em segundos

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	message = message:lower()
	if MsgContains(message, "reset") then
		local arenaCd = player:kv():get(arenaCooldownKey)
		local lastResetCooldown = player:kv():get(resetCooldownKey) or 0
		local lastResetTime = player:kv():get(resetUsedKey) or 0

		if lastResetCooldown > os.time() then
			local remainingTime = lastResetCooldown - os.time()
			local hours = math.floor(remainingTime / 3600)
			local minutes = math.floor((remainingTime % 3600) / 60)
			npcHandler:say(string.format("You can only reset your arena cooldown again in %d hours and %d minutes.", hours, minutes), npc, creature)
			return true
		end

		-- Nova checagem (MOVIDA PARA CÁ): se o cooldown da arena não existir ou não estiver ativo
		if not arenaCd or arenaCd <= os.time() then
			npcHandler:say("You do not have cooldown to reset yet.", npc, creature)
			return true
		end

		-- Checagem se o reset do NPC já foi usado nas últimas 20 horas
		if lastResetTime > os.time() - resetTime then
			npcHandler:say("You have already reset it in the last 20 hours.", npc, creature)
			return true
		end

		npcHandler:say("Are you {positive} you want to reset it? It will cost you 200 tibia coins.", npc, creature)
		npcHandler:setTopic(playerId, 1)
	elseif MsgContains(message, "positive") and npcHandler:getTopic(playerId) == 1 then
		npcHandler:say("You have to buy it directly from store, check Store, MazOT category and then Tibia coins. Are you sure you want to spent 200 coins to reset exp arena cooldown?", npc, creature)
		npcHandler:setTopic(playerId, 2)
	elseif MsgContains(message, "yes") and npcHandler:getTopic(playerId) == 2 then
		npcHandler:setTopic(playerId, 0)
		if player:getItemCount(22118) < 200 then
			npcHandler:say("Sorry, you don't have 200 tibia coins with you. Buy it from store in MazOT category and then Tibia coins.", npc, creature)
			return true
		end

		-- Reset bem-sucedido: remove o cooldown da arena e registra o reset do NPC
		if player:removeItem(22118, 200) then
			player:kv():set(arenaCooldownKey, -1) -- Define o cooldown da arena para -1 (removido)
			player:kv():set(resetCooldownKey, os.time() + resetTime) -- Define o cooldown para o próximo reset do NPC (20 horas)
			player:kv():set(resetUsedKey, os.time()) -- Define o timestamp do último reset
			npcHandler:say("Your arena cooldown has been removed! Feel free to enter it again.", npc, creature)
		end
	elseif MsgContains(message, "no") and npcHandler:getTopic(playerId) == 1 then
		npcHandler:setTopic(playerId, 0)
		npcHandler:say("Ok then.", npc, creature)
	end

	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|! I can {reset} your arena cooldown one time per 20 hours so you can enter again. It cost will 200 tibia coins.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Bye.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Bye, |PLAYERNAME|.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcType:register(npcConfig)