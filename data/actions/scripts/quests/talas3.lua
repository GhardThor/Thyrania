--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1064 then
queststatus = getPlayerStorageValue(cid,1064)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Firewalker Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,9933,1)
setPlayerStorageValue(cid,1064,1)
end
return 0
end
return 1
end
