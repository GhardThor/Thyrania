--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8015 then
queststatus = getPlayerStorageValue(cid,8015)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Cat's Paw.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5480,1)
setPlayerStorageValue(cid,8015,1)
end
return 0
end
return 1
end
