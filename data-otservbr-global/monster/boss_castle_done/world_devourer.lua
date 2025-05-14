local mType = Game.createMonsterType("World Devourer")
local monster = {}

monster.description = "World Devourer"
monster.experience = 77700
monster.outfit = {
	lookType = 875,
	lookHead = 82,
	lookBody = 79,
	lookLegs = 84,
	lookFeet = 94,
	lookAddons = 3,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1228,
	bossRace = RARITY_NEMESIS,
}

monster.health = 500000 
monster.maxHealth = 500000 
monster.race = "venom"
monster.corpse = 0
monster.speed = 225
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.events = {
--	"HeartBossDeath",
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "lemon cupcake", chance = 350, maxCount = 2 },
	{ id = 22721, chance = 100000, maxCount = 12 }, -- gold token
	{ id = 23684, chance = 700, unique = false }, -- crackling egg
	{ id = 23685, chance = 350, unique = false }, -- menacing egg
	{ id = 23538, chance = 1000, unique = false }, -- vibrant egg
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
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1600 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -800, length = 10, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -800, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_YELLOWENERGY, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1200, length = 10, spread = 0, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, radius = 8, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "anomaly break", interval = 2000, chance = 40, target = false },
	--{ name = "devourer summon", interval = 2000, chance = 25, target = false },
}

monster.defenses = {
	defense = 150,
	armor = 150,
	--	mitigation = ???,
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
