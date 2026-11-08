--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8025 then
queststatus = getPlayerStorageValue(cid,8025)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Crocodile boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,3982,1)
setPlayerStorageValue(cid,8025,1)
end
return 0
end
return 1
end
