local config = {
	boss = {
		name = "Magma Bubble",
		position = Position(33776, 32986, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33669, 32926, 15), teleport = Position(33784, 32987, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32927, 15), teleport = Position(33784, 32987, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32928, 15), teleport = Position(33784, 32987, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32929, 15), teleport = Position(33784, 32987, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32930, 15), teleport = Position(33784, 32987, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33761, 32972, 15),
		to = Position(33789, 32998, 15),
	},
	exit = Position(33667, 32926, 15),
}

local lever = BossLever(config)
lever:position({ x = 33669, y = 32925, z = 15 })--(33669, 32925, 15)
lever:register()
