local config = {
	monsterName = "Daily Demonlord",
	bossPos = {x = 32258, y = 31957, z = 7},
    time = "22:20:00",
    time2 = "22:26:00",
    time3 = "22:27:00",
    time4 = "22:28:00",
    time5 = "22:29:00",
    time6 = "22:30:00",
    time7 = "23:00:00",
    bportalPosition = {x = 32353, y = 32220, z = 7},
    goToPosition = {x = 32258, y = 31958, z = 6},
    broadcast = true,
    text = "Boss diario comecando as 22:30, o teleport foi aberto no depot de Thais e ficara aberto ate as 23:00.",
    text2 = "Boss diario iniciando em 4 minutos, o teleport esta aberto no depot de Thais.",
    text3 = "Boss diario iniciando em 3 minutos, o teleport esta aberto no depot de Thais.",
    text4 = "Boss diario iniciando em 2 minutos, o teleport esta aberto no depot de Thais.",
    text5 = "Boss diario iniciando em 1 minuto, o teleport esta aberto no depot de Thais.",
    text6 = "Boss diario nasceu, FIGHT! ",
    text7 = "O teleport foi fechado.",
}

-- Função para criar o teleport
local bportal = GlobalEvent("bportal")
function bportal.onTime(interval)
    local item = Game.createItem(44027, 1, config.bportalPosition)
    item:setDestination(config.goToPosition)
    if config.broadcast then
        Game.broadcastMessage(config.text, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal:time(config.time)
bportal:register()

-- Função para 06:01:00
local bportal2 = GlobalEvent("bportal2")
function bportal2.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text2, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal2:time(config.time2)
bportal2:register()

-- Função para 06:02:00
local bportal3 = GlobalEvent("bportal3")
function bportal3.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text3, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal3:time(config.time3)
bportal3:register()

-- Função para 06:03:00
local bportal4 = GlobalEvent("bportal4")
function bportal4.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text4, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal4:time(config.time4)
bportal4:register()

-- Função para 06:04:00
local bportal5 = GlobalEvent("bportal5")
function bportal5.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text5, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal5:time(config.time5)
bportal5:register()

-- Função para 06:05:00
-- function spawnar boss
local bportal6 = GlobalEvent("bportal6")
function bportal6.onTime(interval)
    if config.broadcast then
		Game.createMonster(config.monsterName, config.bossPos)
        Game.broadcastMessage(config.text6, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal6:time(config.time6)
bportal6:register()

-- Função para fechar o teleport em 06:08:00
--function remove tp
local bportal7 = GlobalEvent("bportal7")
function bportal7.onTime(interval)
    local tile = Tile(config.bportalPosition)
    if tile then
        local bportal = tile:getItemById(44027)
        if bportal then
            bportal:remove()
        end
    end
    if config.broadcast then
        Game.broadcastMessage(config.text7, MESSAGE_GAME_HIGHLIGHT)
    end
end
bportal7:time(config.time7)
bportal7:register()
