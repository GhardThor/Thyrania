--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8028 then
queststatus = getPlayerStorageValue(cid,8028)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Chain Bolter.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8850,1)
setPlayerStorageValue(cid,8028,1)
end
return 0
end
return 1
end
