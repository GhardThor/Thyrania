--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=201, y=86, z=12}

if item.uid ==2040 then
queststatus = getPlayerStorageValue(cid,1058)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"A porta esta selada contra intrusos.")
end
return 0
end
return 1
end
