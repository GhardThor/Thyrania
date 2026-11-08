--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=673, y=624, z=9}

if item.uid ==1080 then
queststatus = getPlayerStorageValue(cid,1080)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"Somente quem terminou a fase 5 pode passar.")
end
return 0
end
return 1
end
