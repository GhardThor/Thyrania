function onUse(cid, item, frompos, item2, topos)

time = 900 ----tempo de espera em segundos

monster = "Hellhound" ------ nome do monstro
pos = {x=312, y=349, z=5} ---- posição

itempos = {x=308, y=350, z=5, stackpos=1}
itemid = 1034
item1 = getThingfromPos(itempos)

itempos2 = {x=308, y=351, z=5, stackpos=1}
itemid2 = 1034
item2 = getThingfromPos(itempos2)

if getPlayerExhaust(cid,9547,time) == -1 then
doSummonCreature(monster,pos)
doTransformItem(item.uid,1946)
doRemoveItem(item1.uid,1)
doRemoveItem(item2.uid,1)
else
doPlayerSendCancel(cid,"A alavanca emperrou.")
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