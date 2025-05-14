local config = {
	boss = {
		name = "Morgaroth",
		position = Position(32249, 32211, 15),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(32249, 32232, 15), teleport = Position(32249, 32206, 15) },
		{ pos = Position(32249, 32233, 15), teleport = Position(32249, 32206, 15) },
		{ pos = Position(32249, 32234, 15), teleport = Position(32249, 32206, 15) },
		{ pos = Position(32249, 32235, 15), teleport = Position(32249, 32206, 15) },
		{ pos = Position(32249, 32236, 15), teleport = Position(32249, 32206, 15) },
	},
	specPos = {
		from = Position(32239, 32203, 15),
		to = Position(32258, 32218, 15),
	},
	exit = Position(32249, 32229, 15),
	exitTeleporter = Position(32249, 32216, 15),
}

local lever = BossLever(config)
--lever:position(Position(32249, 32231, 15))
lever:position({ x = 32249, y = 32231, z = 15 })
lever:register()
