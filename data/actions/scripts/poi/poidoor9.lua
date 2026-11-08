--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=384, y=766, z=10}

if item.uid ==2121 then
queststatus = getPlayerStorageValue(cid,2120)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"You must finish fourth before entering this room.")
end
return 0
end
return 1
end
