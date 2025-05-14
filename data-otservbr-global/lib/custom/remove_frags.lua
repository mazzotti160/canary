function removefrags(player)
    playerid = player:getGuid()
    player:remove()
    db.query('UPDATE `player_kills` SET `time` = 1 WHERE `player_id` = ' .. playerid)
    db.query('UPDATE `players` SET `skull` = 0 WHERE `id` = ' .. playerid)
    db.query('DELETE FROM `player_kills` WHERE `player_id` = ' .. playerid) -- Remove os registros do player na tabela player_kills
    return true
end
