--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=587, y=424, z=6}

if item.uid == 2200 then
queststatus = getPlayerStorageValue(cid,2230)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem terminou a banshee quest é capaz de ir a ilha da Sereia.")
end
return 0
end
return 1
end
