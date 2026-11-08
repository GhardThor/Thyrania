function onUse(cid, item, frompos, item2, topos)

time = 1800 ----tempo de espera em segundos

monster = "Dragon" ------ nome do monstro
pos = {x=438, y=240, z=5} ---posicao em que o monstro ira aparecer

if getPlayerExhaust(cid,9547,time) == -1 then
doSummonCreature(monster,pos)
else
doPlayerSendCancel(cid,"Each player can summon a dragon every half hour.")
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