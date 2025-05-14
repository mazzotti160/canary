local rewards = {
	{ id = 43864, name = "Sanguine Blade" },
	{ id = 43866, name = "Sanguine Cudgel" },
	{ id = 43868, name = "Sanguine Hatchet" },
	{ id = 43870, name = "Sanguine Razor" },
	{ id = 43872, name = "Sanguine Bludgeon" },
	{ id = 43874, name = "Sanguine Battleaxe" },
	{ id = 43876, name = "Sanguine Legs" },
	{ id = 43877, name = "Sanguine Bow" },
	{ id = 43879, name = "Sanguine Crossbow" },
	{ id = 43881, name = "Sanguine Greaves" },
	{ id = 43882, name = "Sanguine Coil" },
	{ id = 43884, name = "Sanguine Boots" },
	{ id = 43885, name = "Sanguine Rod" },
	{ id = 43887, name = "Sanguine Galoshes" },
}

local rewards2 = {
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
	local chance = math.random(1, 100) -- Gera um número entre 1 e 100
	local rewardItem

	if chance <= 70 then -- 80% de chance para rewards
		rewardItem = rewards[math.random(#rewards)]
	else -- 20% de chance para rewards2
		rewardItem = rewards2[math.random(#rewards2)]
	end

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	local message = "O Player: " .. player:getName() .. " abriu uma bag you covet modified e encontrou um " .. rewardItem.name .. "."
	Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	return true
end

bagyouCovet:id(43896)
bagyouCovet:register()
