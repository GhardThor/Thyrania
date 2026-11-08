--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8013 then
queststatus = getPlayerStorageValue(cid,8013)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a The Calamity.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8932,1)
setPlayerStorageValue(cid,8013,1)
end
return 0
end
return 1
end
