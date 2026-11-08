--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=553, y=206, z=7}

if item.uid ==8017 then
queststatus = getPlayerStorageValue(cid,8018)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Sorry Not Is Possible.")
end
return 0
end
return 1
end
