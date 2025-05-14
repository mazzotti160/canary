-- Evento para a mensagem do Discord
local discordMessageEvent = GlobalEvent("Discord Message Event")
local discordMessage = "[ DISCORD ] : https://discord.gg/BNjpUSzwYP"

function discordMessageEvent.onTime(interval)
    Game.broadcastMessage(discordMessage, MESSAGE_GAME_HIGHLIGHT)
    return true
end

discordMessageEvent:interval(19 * 60 * 1000) -- Envia a cada 19 minutos
discordMessageEvent:register()

-- Evento para a mensagem do WhatsApp
local whatsappMessageEvent = GlobalEvent("WhatsApp Message Event")
local whatsappMessage = "[ WHATSAPP ] : https://chat.whatsapp.com/BfxfrqAwl7Q4jtYfPm0D4e"

function whatsappMessageEvent.onTime(interval)
    Game.broadcastMessage(whatsappMessage, MESSAGE_GAME_HIGHLIGHT)
    return true
end

whatsappMessageEvent:interval(21 * 60 * 1000) -- Envia a cada 21 horas
whatsappMessageEvent:register()

-- Evento para as outras mensagens
local hourlyMessageEvent = GlobalEvent("Hourly Message Event")
local messages = {
    "[ DONATE ] : Pacotes de donate ativos no discord: https://ptb.discord.com/channels/1307752992782553199/1347651593717158030",
    --"[ DONATE ] : Todos donates acima de 100,00 ganham 50% de coins bonus, somente em tickets no discord!",
    "[ COMANDOS UTEIS ] : !promotion , !discord , !attackspeed!",
    "[ EXERCISES ] : Training exercises sao infinitas, porem nerfadas em relacao as outras. Obtidas no NPC Exercises, dentro da area de exercise dummy ao sul do DP!",
    "[ EXERCISES ] : Ao acabar as cargas de uma exercise weapon outra se inicia de forma automatica, desde que seja do mesmo tipo!",
    "[ CRAFT ] : No castelo de bosses, tem um dos bosses que da raid no ultimo andar, pode ser feito a cada 10 horas igual os bosses normais de alavanca. Nele dropa TODOS os materiais necessarios!",
    "[ ARENA ] : Localizada no DP de Thais, o teleport amarelo te leva pro lobby da arena diaria, onde voce pode farmar charms, potions drome, utilitarios pra forja e ate mesmo bags!",
    "[ INFO ] : Teleport no templo pro castelo de craft, onde existe um npc que procura itens valiosos e te recompensa com itens necessarios pro craft!",
    "[ INFO ] : Voce pode evoluir suas armas atraves do sistema de craft!",
    "[ INFO ] : Fist fighting aumenta seu attackspeed, exercises shields sobem ainda mais rapido o fist fighting do seu char!",
    "[ INFO ] : Bosses de raid no teleport do templo agilizam muito seu progresso no craft!"
}

function hourlyMessageEvent.onTime(interval)
    local randomIndex = math.random(1, #messages)
    local randomMessage = messages[randomIndex]
    Game.broadcastMessage(randomMessage, MESSAGE_GAME_HIGHLIGHT)
    return true
end

hourlyMessageEvent:interval(16 * 60 * 1000) -- Envia a cada 16 minutos (ajuste conforme necessário)
hourlyMessageEvent:register()