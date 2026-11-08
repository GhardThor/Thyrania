--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1016 then
queststatus = getPlayerStorageValue(cid,1016)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Ice Rapier.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2396,1)
setPlayerStorageValue(cid,1016,1)
end
return 0
end
return 1
end
