local mType = Game.createMonsterType("Lady Tenebris")
local monster = {}

monster.description = "Lady Tenebris"
monster.experience = 50000
monster.outfit = {
	lookType = 433,
	lookHead = 76,
	lookBody = 95,
	lookLegs = 38,
	lookFeet = 94,
	lookAddons = 2,
	lookMount = 0,
}

monster.events = {
	--"ForgottenKnowledgeBossDeath",
	--"HealthForgotten",
}

monster.bosstiary = {
	bossRaceId = 1315,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 60000
monster.maxHealth = 60000
monster.race = "blood"
monster.corpse = 6560
monster.speed = 185
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "May the embrace of darkness kill you!", yell = false },
	{ text = "I'm the one and only mistress of shadows!", yell = false },
	{ text = "Blackout!", yell = false },
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
	{ id = 22721, chance = 100000 }, -- gold token
	{ id = 22516, chance = 100000 }, -- silver token
	{ id = 22755, chance = 200 }, -- book of lies
	{ id = 20088, chance = 200 }, -- crude umbral spellbook
	{ id = 24957, chance = 500, unique = false }, -- part of a rune
	{ id = 20089, chance = 200 }, -- umbral spellbook
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1800 },
	{ name = "combat", interval = 6000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -1200, maxDamage = -1500, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -600, radius = 4, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "tenebris summon", interval = 2000, chance = 14, target = false },
	{ name = "tenebris ultimate", interval = 15000, chance = 30, target = false },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	--	mitigation = ???,
	{ name = "combat", interval = 3000, chance = 25, type = COMBAT_HEALING, minDamage = 600, maxDamage = 2700, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
