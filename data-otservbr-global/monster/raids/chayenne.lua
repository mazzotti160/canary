local mType = Game.createMonsterType("Chayenne")
local monster = {}

monster.description = "Chayenne"
monster.experience = 15000000
monster.outfit = {
	lookType = 155,
	lookHead = 78,
	lookBody = 0,
	lookLegs = 105,
	lookFeet = 99,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 1800000
monster.maxHealth = 1800000
monster.race = "blood"
monster.corpse = 6081
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
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
	"BossRoomReward",
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
	{ id = 14682, chance = 100000, unique = true }, -- chayenne's magical key
        { id = 16206, chance = 15000, maxCount = 15 }, -- abyssador lash
        { id = 16136, chance = 15000, maxCount = 15 }, -- deathstrike snippet
        { id = 16205, chance = 15000, maxCount = 15 }, -- gnomevil hat
        { id = 27621, chance = 15000, maxCount = 12 }, -- huge shell
        { id = 27627, chance = 15000, maxCount = 12 }, -- huge spiky snail shell
        { id = 27619, chance = 15000, maxCount = 12 }, -- giant tentacle
        { id = 36796, chance = 15000, maxCount = 10 }, -- brainstealer brainwave
        { id = 36795, chance = 15000, maxCount = 10 }, -- brainstealer brain
        { id = 36794, chance = 15000, maxCount = 10 }, -- brainstealer tissue
        { id = 39040, chance = 15000, maxCount = 7 },  -- fiery tear
        { id = 39543, chance = 15000, maxCount = 7 },  -- smoldering eye
        { id = 33928, chance = 15000, maxCount = 5 },  -- megalomania essence
        { id = 33925, chance = 15000, maxCount = 5 },  -- megalomania skull
        { id = 43968, chance = 15000, maxCount = 3 },   -- bakragore amalgamation
		{ id = 37341, chance = 1000},  --skulls
		{ id = 37340, chance = 1000},  --skulls
		{ id = 37339, chance = 1000},  --skulls
		{ id = 37338, chance = 1000},  --skulls
		{ id = 37337, chance = 1000},  --skulls
		{ id = 37335, chance = 1000},  --skulls	
        { id = 3423, chance = 650}, -- blessed shield
		{ id = 3246, chance = 650}, -- boots of waterwalking
		{ id = 3363, chance = 650}, -- dragon scale legs
		{ id = 3402, chance = 650}, -- native armor
		{ id = 3365, chance = 650}, -- golden helmet	
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2300, maxDamage = -3500, attack = 130 },
--FISICO UE	
	{ name = "combat", interval = 2000, chance = 36, type = COMBAT_PHYSICALDAMAGE, minDamage = -4000, maxDamage = -6000, radius = 8, effect = CONST_ME_EXPLOSIONAREA, target = false },		
--UE TERRA CONST_ME_PLANTATTACK
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_PLANTATTACK, target = false },	
--UE MORTE -- CONST_ME_REAPER
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_REAPER, target = false },	
--UE VIS -- CONST_ME_ELECTRICALSPARK
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_ELECTRICALSPARK, target = false },	
--UE FLAM -- CONST_ME_FIREAREA
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_FIREAREA, target = false },	
--UE HOLY -- CONST_ME_DIVINE_DAZZLE
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_DIVINE_DAZZLE, target = false },	
--UE ICE CONST_ME_GIANTICE
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_ICEDAMAGE, minDamage = -1500, maxDamage = -2250, radius = 7, effect = CONST_ME_GIANTICE, target = false },	
}

monster.defenses = {
	defense = 20,
	armor = 15,
	--	mitigation = ???,
	{ name = "combat", interval = 1000, chance = 1, type = COMBAT_HEALING, minDamage = 0, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 3500, chance = 30, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_ENERGYHIT, target = false, duration = 10000, outfitMonster = "Devovorga" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_ENERGYHIT, target = false, duration = 10000, outfitMonster = "Chayenne" },
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
