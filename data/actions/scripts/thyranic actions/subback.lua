--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=886, y=373, z=5}

if item.uid ==2070 then
queststatus = getPlayerStorageValue(cid,2230)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(door,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem terminou a banshee quest é capaz de viajar ao submundo.")
end
return 0
end
return 1
end
