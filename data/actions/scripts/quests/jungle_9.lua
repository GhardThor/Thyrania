--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=667, y=619, z=9}

if item.uid ==1079 then
queststatus = getPlayerStorageValue(cid,1079)
if queststatus == 1 then

setPlayerStorageValue(cid,1080)
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"voce esta liberado para a fase 5.")
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,1080,1)
end
return 0
end
return 1
end
