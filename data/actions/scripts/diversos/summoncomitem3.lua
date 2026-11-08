function onUse(cid, item, frompos, item2, topos)

time = 60 ----tempo de espera em segundos

monster = "Vampire" ------ nome do monstro
pos = {x=217, y=364, z=6} ---posicao em que o monstro ira aparecer

if getPlayerExhaust(cid,9547,time) == -1 then
doSummonCreature(monster,pos)
else
doPlayerSendCancel(cid,"Você precisa esperar no mínimo 1min para reutilizar.")
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