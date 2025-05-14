local storeregen = CreatureEvent("storeregen")

function getRegenCondition(healthGain, manaGain)
	local condition = Condition(CONDITION_REGENERATION)
	condition:setParameter(CONDITION_PARAM_TICKS, -1)
	condition:setParameter(CONDITION_PARAM_HEALTHGAIN, healthGain)
	condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 2000) -- 2 segundos
	condition:setParameter(CONDITION_PARAM_MANAGAIN, manaGain)
	condition:setParameter(CONDITION_PARAM_MANATICKS, 2000) -- 2 segundos
	return condition
end

function storeregen.onLogin(player)
	local kv_regen_expiry = player:kv():get("buff-regen")
	local kv_regen_intensity = player:kv():get("bonus-mounts") -- Valor de 0 a quantidade de montarias

	local healthBonus = 0
	local manaBonus = 0
	local extraHealthBonus = 0
	local extraManaBonus = 0

	if kv_regen_intensity then
		local intensity = tonumber(kv_regen_intensity) or 0
		if intensity >= 0 and intensity <= 100 then
			healthBonus = intensity * 1
			manaBonus = intensity * 2
		elseif intensity >= 200 then
			healthBonus = 100 * 1 -- Máximo de bônus por montarias (até 100)
			manaBonus = 100 * 2   -- Máximo de bônus por montarias (até 100)
			extraHealthBonus = 50  -- Bônus extra por ter 200+ montarias
			extraManaBonus = 100    -- Bônus extra por ter 200+ montarias
		else -- Entre 101 e 199 montarias, aplica o bônus proporcional
			healthBonus = intensity * 1
			manaBonus = intensity * 2
		end
	end

	local finalHealthGain = 15 + healthBonus + extraHealthBonus
	local finalManaGain = 30 + manaBonus + extraManaBonus

	local regenCondition = getRegenCondition(finalHealthGain, finalManaGain)

	if kv_regen_expiry and kv_regen_expiry >= os.time() then
		player:addCondition(regenCondition)
	else
		player:removeCondition(regenCondition)
	end
	return true
end

storeregen:register()