--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=380, y=768, z=10}

if item.uid ==2115 then
queststatus = getPlayerStorageValue(cid,2114)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"You must finish first before entering this room.")
end
return 0
end
return 1
end
