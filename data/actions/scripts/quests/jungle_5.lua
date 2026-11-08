--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=667, y=619, z=9}

if item.uid ==1075 then
queststatus = getPlayerStorageValue(cid,1075)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,1076)


else
doPlayerSendTextMessage(cid,22,"voce esta liberado para a fase 4.")
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,1076,1)
end
return 0
end
return 1
end
