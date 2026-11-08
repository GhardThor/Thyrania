--
function onUse(cid, item, frompos, item2, topos)

bobu = {x=1162, y=610, z=8}

if item.uid ==8009 then
queststatus = getPlayerStorageValue(cid,8009)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
doTeleportThing(cid,bobu)
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma coconut boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,9931,1)
setPlayerStorageValue(cid,8009,1)
doTeleportThing(cid,bobu)
end
return 0
end
return 1
end
