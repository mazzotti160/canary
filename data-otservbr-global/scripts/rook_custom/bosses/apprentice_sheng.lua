local config = {
	boss = {
		name = "Apprentice Sheng",
		position = Position(32113, 32051, 12),
	},
	requiredLevel = 30,
	playerPositions = {
		{ pos = Position(32120, 32044, 12), teleport = Position(32109, 32052, 12), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32108, 32046, 12),
		to = Position(32116, 32055, 12),
	},
	exit = Position(32120, 32046, 12),
}

local lever = BossLever(config)
lever:position({ x = 32121, y = 32044, z = 12 })--(32121, 32044, 12)
lever:register()
