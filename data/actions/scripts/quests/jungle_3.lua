--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=667, y=619, z=8}

if item.uid ==1073 then
queststatus = getPlayerStorageValue(cid,1073)
if queststatus == 1 then

setPlayerStorageValue(cid,1074)
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"Voce liberou a segunda fase.")
setPlayerStorageValue(cid,1074)
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
end
return 0
end
return 1
end
