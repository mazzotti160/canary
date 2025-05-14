local rewards = {
	{ id = 43886, name = "Grand Sanguine Rod" },
	{ id = 43883, name = "Grand Sanguine Coil" },
	{ id = 43880, name = "Grand Sanguine Crossbow" },
	{ id = 43878, name = "Grand Sanguine Bow" },
	{ id = 43875, name = "Grand Sanguine Battleaxe" },
	{ id = 43873, name = "Grand Sanguine Bludgeon" },
	{ id = 43871, name = "Grand Sanguine Razor" },
	{ id = 43869, name = "Grand Sanguine Hatchet" },
	{ id = 43867, name = "Grand Sanguine Cudgel" },
	{ id = 43865, name = "Grand Sanguine Blade" },
}

local bagyouCovet = Action()

function bagyouCovet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

		local message = "o Player: " .. player:getName() .. " abriu uma bag you covet enhanced e encontrou um " .. rewardItem.name .. "."
				Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	return true
end

bagyouCovet:id(43897)
bagyouCovet:register()
