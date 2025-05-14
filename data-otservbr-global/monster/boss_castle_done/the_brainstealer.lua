local mType = Game.createMonsterType("The Brainstealer")
local monster = {}

monster.description = "The Brainstealer"
monster.experience = 72000
monster.outfit = {
	lookType = 1412,
	lookHead = 94,
	lookBody = 88,
	lookLegs = 88,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2055,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 60000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 36843
monster.speed = 425

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "brain parasite", chance = 20, interval = 4000, count = 1 },
	},
}

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
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
	{ name = "brainstealer's tissue", chance = 100000 },
	{ name = "brainstealer's brain", chance = 100000 },
	{ name = "brainstealer's brainwave", chance = 100000 },
	{ name = "eldritch breeches", chance = 1100 },
	{ name = "eldritch cowl", chance = 1100 },
	{ name = "eldritch hood", chance = 1100 },
	{ name = "eldritch bow", chance = 1100 },
	{ name = "eldritch quiver", chance = 1100 },
	{ name = "eldritch claymore", chance = 1100 },
	{ name = "eldritch greataxe", chance = 1100 },
	{ name = "eldritch warmace", chance = 1100 },
	{ name = "eldritch shield", chance = 1100 },
	{ name = "eldritch cuirass", chance = 1100 },
	{ name = "eldritch folio", chance = 1100 },
	{ name = "eldritch tome", chance = 1100 },
	{ name = "eldritch rod", chance = 1100 },
	{ name = "eldritch wand", chance = 1100 },
	{ name = "gilded eldritch claymore", chance = 1100 },
	{ name = "gilded eldritch greataxe", chance = 1100 },
	{ name = "gilded eldritch warmace", chance = 1100 },
	{ name = "gilded eldritch wand", chance = 1100 },
	{ name = "gilded eldritch rod", chance = 1100 },
	{ name = "gilded eldritch bow", chance = 1100 },
	{ name = "eldritch crystal", chance = 1100 },
}

monster.attacks = {
	{ name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = 0, maxDamage = -900 },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, radius = 4, minDamage = -1200, maxDamage = -1900, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH, target = true, range = 7 },
	{ name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, radius = 4, minDamage = -700, maxDamage = -1000, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, length = 8, spread = 0, minDamage = -1200, maxDamage = -1600, effect = CONST_ME_ELECTRICALSPARK },
}

monster.defenses = {
	defense = 78,
	armor = 78,
	mitigation = 3.27,
	{ name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2000, minDamage = 1450, maxDamage = 5350, effect = CONST_ME_MAGIC_BLUE },
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
	{ type = "invisible", condition = true },
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Feel the power of death unleashed!", yell = false },
	{ text = "I will rule again and my realm of death will span the world!", yell = false },
	{ text = "My lich-knights will conquer this world for me!", yell = false },
}

mType:register(monster)
