local mType = Game.createMonsterType("Zoralurk")
local monster = {}

monster.description = "Zoralurk"
monster.experience = 15000000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 98,
	lookLegs = 86,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 1200000
monster.maxHealth = 1200000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 200
monster.manaCost = 0

monster.events = {
	"BossRoomReward",
}

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
		{ name = "demon", chance = 50, interval = 4000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I AM ZORALURK, THE DEMON WITH A THOUSAND FACES", yell = true },
	{ text = "BRING IT, COCKROACHES!", yell = true },
}

monster.loot = {
--custom craft loot
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
--end
	{ name = "platinum coin", chance = 95000, maxCount = 74 },
	{ name = "demonic essence", chance = 95000, maxCount = 5 },
	{ name = "green gem", chance = 50000 },
	{ name = "great mana potion", chance = 45000 },
	{ name = "small amethyst", chance = 36000, maxCount = 18 },
	{ name = "devileye", chance = 36000 },
	{ name = "small emerald", chance = 27000, maxCount = 7 },
	{ name = "small sapphire", chance = 27000, maxCount = 9 },
	{ name = "red tome", chance = 27000 },
	{ name = "ultimate health potion", chance = 27000 },
	{ name = "talon", chance = 22000, maxCount = 7 },
	{ name = "demon horn", chance = 22000, maxCount = 2 },
	{ id = 6299, chance = 22000 }, -- death ring
	{ id = 3098, chance = 22000 }, -- ring of healing
	{ name = "chain bolter", chance = 22000 },
	{ name = "dark lord's cape", chance = 22000 },
	{ name = "ironworker", chance = 25000 },
	{ name = "double axe", chance = 18000 },
	{ name = "great spirit potion", chance = 18000 },
	{ name = "magic plate armor", chance = 18000 },
	{ name = "might ring", chance = 18000 },
	{ name = "mind stone", chance = 18000 },
	{ id = 3049, chance = 18000 }, -- stealth ring
	{ name = "fireborn giant armor", chance = 18000 },
	{ name = "royal crossbow", chance = 18000 },
	{ name = "teddy bear", chance = 18000 },
	{ name = "white pearl", chance = 13000, maxCount = 11 },
	{ name = "black pearl", chance = 13000, maxCount = 13 },
	{ name = "assassin star", chance = 13000, maxCount = 35 },
	{ name = "demonbone", chance = 13000 },
	{ name = "golden mug", chance = 13000 },
	{ name = "Morgaroth's heart", chance = 13000 },
	{ name = "obsidian truncheon", chance = 13000 },
	{ name = "stomper", chance = 13000 },
	{ name = "blue gem", chance = 9000 },
	{ name = "gold ring", chance = 9000 },
	{ name = "demon shield", chance = 9000 },
	{ id = 3051, chance = 9000 }, -- energy ring
	{ name = "giant sword", chance = 9000 },
	{ name = "golden legs", chance = 9000 },
	{ name = "life crystal", chance = 9000 },
	{ id = 3046, chance = 9000 }, -- magic light wand
	{ name = "orb", chance = 9000 },
	{ name = "strange symbol", chance = 9000 },
	{ name = "steel boots", chance = 9000 },
	{ name = "thunder hammer", chance = 9000 },
	{ name = "small diamond", chance = 4500, maxCount = 5 },
	{ id = 3007, chance = 4500 }, -- crystal ring
	{ name = "fire axe", chance = 4500 },
	{ name = "great health potion", chance = 4500 },
	{ name = "mastermind shield", chance = 4500 },
	{ name = "dragon robe", chance = 4500 },
	{ name = "molten plate", chance = 4500 },
	{ name = "great shield", chance = 500 },
	{ name = "warlord sword", chance = 33 },
	{ name = "patched boots", chance = 33 },
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
	defense = 65,
	armor = 55,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "behemoth" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "fire devil" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "giant spider" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "undead dragon" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "lost soul" },
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
