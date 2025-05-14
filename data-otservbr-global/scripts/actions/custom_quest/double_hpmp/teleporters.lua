--farmine sand --> falcon bastion
local config = {
    minLevel = 1,
    firstPosition = Position(1706, 1625, 6) -- Posição destino 1
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass:position({ x = 1704, y = 1627, z = 5 }) -- Alavanca teleportar para destino 1
treePass:register()

-- Segundo Teleport

local config2 = {
    minLevel = 1,
    firstPosition = Position(1708, 1625, 6) -- Posição destino 2
}

local treePass2 = Action();

function treePass2.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config2.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass2:position({ x = 1702, y = 1638, z = 6 }) -- Teleportar para destino 2
treePass2:register()

-- Terceiro Teleport

local config3 = {
    minLevel = 1,
    firstPosition = Position(1700, 1637, 7) -- Posição destino 3
}

local treePass3 = Action();

function treePass3.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config3.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass3:position({ x = 1702, y = 1637, z = 7 }) -- Stone pillar teleporta para destino 3
treePass3:register()

-- Quarto Teleport

local config4 = {
    minLevel = 1,
    firstPosition = Position(1714, 1626, 8) -- Posição destino 4
}

local treePass4 = Action();

function treePass4.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config4.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass4:position({ x = 1704, y = 1622, z = 7 }) -- Banner na parede tp para destino 4
treePass4:register()

-- Quinto Teleport

local config5 = {
    minLevel = 1,
    firstPosition = Position(1711, 1642, 9) -- Posição destino 5
}

local treePass5 = Action();

function treePass5.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config5.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass5:position({ x = 1702, y = 1630, z = 8 }) -- Vaso teleporta para destino 5
treePass5:register()

-- Sexto Teleport

local config6 = {
    minLevel = 1,
    firstPosition = Position(1716, 1620, 10) -- Posição destino 6
}

local treePass6 = Action();

function treePass6.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config6.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass6:position({ x = 1705, y = 1625, z = 9 }) -- Tumba teleporta para destino 6
treePass6:register()

-- Sétimo Teleport

local config7 = {
    minLevel = 1,
    firstPosition = Position(1698, 1625, 11) -- Posição destino 7
}

local treePass7 = Action();

function treePass7.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config7.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass7:position({ x = 1694, y = 1632, z = 10 }) -- Blood basin para destino 7
treePass7:register()

-- oitavo

local config8 = {
    minLevel = 1,
    firstPosition = Position(1711, 1642, 9) -- Posição destino 7
}

local treePass7 = Action();

function treePass7.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(config7.firstPosition)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

treePass7:position({ x = 1708, y = 1629, z = 7 }) -- (1708, 1629, 7)
treePass7:register()