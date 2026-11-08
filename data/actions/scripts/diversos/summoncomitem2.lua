function onUse(cid, item, frompos, item2, topos)

time = 30 ----tempo de espera em segundos

monster = "Ghoul" ------ nome do monstro
pos = {x=232, y=384, z=7} ---posicao em que o monstro ira aparecer
monster2 = "Scarab" ------ nome do monstro
pos2 = {x=236, y=385, z=7} ---posicao em que o monstro ira aparecer

if getPlayerExhaust(cid,9547,time) == -1 then
doSummonCreature(monster,pos)
doSummonCreature(monster2,pos2)
else
doPlayerSendCancel(cid,"Você precisa esperar no mínimo 30 segs para reutilizar.")
end

return 1
end

----------exhaust by colex
function getPlayerExhaust(player,number,time)

now = os.time()
before = getPlayerStorageValue(player,number)

exhaust = os.difftime(now,before)

if before == -1 then
setPlayerStorageValue(player,number,now)
return -1
else
if exhaust >= time then
setPlayerStorageValue(player,number,now)
return -1
else
return 1
end
end
end