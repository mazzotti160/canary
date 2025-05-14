local config = {
	boss = {
		name = "Munster",
		position = Position(32114, 32226, 9),
	},
	requiredLevel = 30,
	playerPositions = {
		{ pos = Position(32098, 32217, 9), teleport = Position(32119, 32226, 9), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32108, 32222, 9),
		to = Position(32124, 32231, 9),
	},
	exit = Position(32102, 32217, 9),
}

local lever = BossLever(config)
lever:position({ x = 32098, y = 32216, z = 9 })--(32098, 32216, 9)
lever:register()
