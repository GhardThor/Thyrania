--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8027 then
queststatus = getPlayerStorageValue(cid,8027)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a fireborn giant armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8881,1)
setPlayerStorageValue(cid,8027,1)
end
return 0
end
return 1
end
