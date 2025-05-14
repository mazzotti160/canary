local config = {
	boss = {
		name = "Rottie The Rotworm",
		position = Position(32166, 32147, 11),
	},
	requiredLevel = 30,
	playerPositions = {
		{ pos = Position(32171, 32145, 11), teleport = Position(32161, 32147, 11), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32159, 32141, 11),
		to = Position(32169, 32152, 11),
	},
	exit = Position(32180, 32148, 11),
}

local lever = BossLever(config)
lever:position({ x = 32172, y = 32145, z = 11 })--(32172, 32145, 11)
lever:register()
