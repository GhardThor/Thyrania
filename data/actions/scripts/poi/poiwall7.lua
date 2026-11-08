function onUse(cid, item, frompos, item2, topos)

time = 60 ----tempo de espera em segundos

monster = "Demon" ------ nome do monstro
pos = {x=359, y=769, z=7} ---posicao em que o monstro ira aparecer
monster2 = "Demon" ------ nome do monstro
pos2 = {x=361, y=769, z=7} ---posicao em que o monstro ira aparecer

if getPlayerExhaust(cid,9547,time) == -1 then
doSummonCreature(monster,pos)
doSummonCreature(monster2,pos2)
doPlayerSendTextMessage(cid,22,"Lever wrong, try the one behind the tree.")
else
doPlayerSendCancel(cid,"You must wait at least 1 min for reuse.")
end

return 1
end

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