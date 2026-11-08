--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=661, y=624, z=9}

if item.uid ==1074 then
queststatus = getPlayerStorageValue(cid,1074)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"Para sair daqui, voce prescisa terminar essa fase.")
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
end
return 0
end
return 1
end
