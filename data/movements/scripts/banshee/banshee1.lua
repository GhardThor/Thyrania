function onStepIn(cid, item, position, fromPosition)

telepos = {x = 863, y = 854 , z = 7}
monster = "Ghost"
pos1 = {x=830, y=863, z=7}
monster2 = "Demon Skeleton"
pos2 = {x=833, y=865, z=7}
monster3 = "Demon Skeleton"
pos3 = {x=833, y=861, z=7}
lvl = getPlayerStorageValue(cid,2193)

if item.actionid == 2193 and lvl == -1 then
doTeleportThing(cid, telepos)
doSummonCreature(monster,pos1)
doSummonCreature(monster2,pos2)
doSummonCreature(monster3,pos3)
setPlayerStorageValue(cid,2193,1)
else
doPlayerSendTextMessage(cid,22,"Você já completou esta Seal.")
end
end