local config = {
	boss = {
		name = "Teleskor",
		position = Position(32135, 32201, 11),
	},
	requiredLevel = 30,
	playerPositions = {
		{ pos = Position(32147, 32195, 11), teleport = Position(32135, 32197, 11), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32128, 32194, 11),
		to = Position(32142, 32207, 11),
	},
	exit = Position(32148, 32197, 11),
}

local lever = BossLever(config)
lever:position({ x = 32148, y = 32195, z = 11 })--(32148, 32195, 11)
lever:register()
