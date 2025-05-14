local mType = Game.createMonsterType("Bakragore")
local monster = {}

monster.description = "Bakragore"
monster.experience = 15000000
monster.outfit = {
	lookType = 1671,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	"RottenBloodBakragoreDeath",
}

monster.bosstiary = {
	bossRaceId = 2367,
	bossRace = RARITY_NEMESIS,
}

monster.health = 660000
monster.maxHealth = 660000
monster.race = "undead"
monster.corpse = 44012
monster.speed = 205
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 2,
	summons = {
	--	{ name = "Elder Bloodjaw", chance = 20, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Light ... darkens!", yell = false },
	{ text = "Light .. the ... darkness!", yell = false },
	{ text = "Darkness ... is ... light!", yell = false },
	{ text = "WILL ... PUNISH ... YOU!", yell = false },
	{ text = "RAAAR!", yell = false },
}

monster.loot = {
	{ name = "lemon cupcake", chance = 350, maxCount = 2 },
	{ name = "crystal coin", chance = 8938, maxCount = 200 },
{ name = "crystal coin", chance = 100000, maxCount = 5 },
{ id = 3037, chance = 25000, maxcount = 8 }, -- yellow gem
{ id = 3038, chance = 25000, maxcount = 8 }, -- green gem
{ id = 3039, chance = 25000, maxcount = 8 }, -- red gem
{ id = 3041, chance = 25000, maxcount = 8 }, -- blue gem
{ id = 3036, chance = 15000, maxcount = 3 }, -- violet gem
{ id = 32769, chance = 15000, maxcount = 3 }, -- white gem
{ id = 32626, chance = 10000, maxcount = 1 }, -- amber
{ id = 32625, chance = 10000, maxcount = 1 }, -- amber with a dragonfly
{ id = 32624, chance = 10000, maxcount = 1 }, -- amber with a bug
{ id = 32623, chance = 10000, maxcount = 1 }, -- giant topaz
{ id = 32622, chance = 10000, maxcount = 1 }, -- giant amethyst
{ id = 30180, chance = 10000, maxcount = 1 }, -- hexagonal ruby
{ id = 30059, chance = 10000, maxcount = 1 }, -- giant ruby
{ id = 30060, chance = 10000, maxcount = 1 }, -- giant emerald
{ id = 30061, chance = 10000, maxcount = 1 }, -- giant sapphire
{ id = 16242, chance = 1500, maxCount = 2 }, --red teleport crystal
{ name = "minor crystalline token", chance = 1500, maxCount = 2 },
	{ id = 43899, chance = 500 }, --cursed wood
	{ id = 43900, chance = 500 },--darklight geode
	{ id = 43895, chance = 375 }, -- Bag you covet
	{ id = 43968, chance = 5700, maxcount = 1 }, -- bakra amalgamation
		{ id = 43855, chance = 6500 }, -- darklight heart
	{ id = 43854, chance = 6500 }, -- tainted heart
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -3000, maxDamage = -5000 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -2700, maxDamage = -3200, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -2500, length = 8, spread = 0, effect = 252, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -2500, maxDamage = -3500, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -2000, maxDamage = -2700, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -2500, maxDamage = -3800, length = 8, spread = 0, effect = 244, target = false },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3500, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
