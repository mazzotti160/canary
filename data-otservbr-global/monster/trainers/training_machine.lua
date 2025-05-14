local mType = Game.createMonsterType("Training Machine")
local monster = {}

monster.description = "a training machine"
monster.experience = 0
monster.outfit = {
	lookType = 1142,
}

monster.health = 1000000
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 0
monster.speed = 0

monster.changeTarget = {
	interval = 1000,
	chance = 0,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 100,
}

monster.summons = {}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I hope you are enjoying your sparring Sir or Ma'am!", yell = false },
	{ text = "Threat level rising!", yell = false },
	{ text = "Engaging in hostile interaction!", yell = false },
	{ text = "Rrrtttarrrttarrrtta", yell = false },
	{ text = "Please feel free to hit me Sir or Ma'am!", yell = false },
	{ text = "klonk klonk klonk", yell = false },
	{ text = "Self-diagnosis running.", yell = false },
	{ text = "Battle simulation proceeding.", yell = false },
	{ text = "Repairs initiated!", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -0, attack = 130 },
--[[	
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
]]
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{ name = "combat", type = COMBAT_HEALING, chance = 100, interval = 2000, minDamage = 100000, maxDamage = 500000, effect = CONST_ME_MAGIC_BLUE },
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

monster.immunities = {}

mType:register(monster)
