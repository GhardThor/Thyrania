--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=667, y=619, z=9}

if item.uid ==1077 then
queststatus = getPlayerStorageValue(cid,1077)
if queststatus == 1 then

setPlayerStorageValue(cid,1078)
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"voce esta liberado para a last room.")
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,1078,1)
end
return 0
end
return 1
end
