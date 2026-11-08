--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=609, y=240, z=7}

if item.uid ==2041 then
queststatus = getPlayerStorageValue(cid,1081) and getPlayerStorageValue (cid,2225)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem terminou a jungle quest e a banshee quest é capaz de viajar ao submundo.")
end
return 0
end
return 1
end
