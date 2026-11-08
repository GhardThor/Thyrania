--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=384, y=759, z=10}

if item.uid ==2123 then
queststatus = getPlayerStorageValue(cid,2122)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"You must finish the final room before entering this room.")
end
return 0
end
return 1
end
