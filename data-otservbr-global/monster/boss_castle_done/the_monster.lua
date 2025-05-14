local mType = Game.createMonsterType("The Monster")
local monster = {}

monster.description = "The Monster"
monster.experience = 30000
monster.outfit = {
	lookType = 1600,
}

monster.bosstiary = {
	bossRaceId = 2299,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 42247
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 60,
	health = 30,
	damage = 10,
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
	critChance = 10,
	staticAttackChance = 90,
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

monster.loot = {
	{ name = "lemon cupcake", chance = 350, maxCount = 2 },
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
	{ name = "alchemist's notepad", chance = 1100 },
	{ name = "antler-horn helmet", chance = 1100 },
	{ name = "mutant bone kilt", chance = 1100 },
	{ name = "mutated skin armor", chance = 1100 },
	{ name = "mutated skin legs", chance = 1100 },
	{ name = "stitched mutant hide legs", chance = 1100 },
	{ name = "alchemist's boots", chance = 1100 },
	{ name = "mutant bone boots", chance = 1100 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2800 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1200, effect = CONST_ME_ENERGYAREA, target = true, radius = 5, range = 3 },
	{ name = "destroy magic walls", interval = 1000, chance = 50 },
}

monster.defenses = {
	defense = 54,
	armor = 59,
	mitigation = 3.7,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 900, maxDamage = 2400, effect = CONST_ME_MAGIC_BLUE, target = false },
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

mType:register(monster)
