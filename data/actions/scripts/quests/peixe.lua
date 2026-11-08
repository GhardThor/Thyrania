--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1093 then
queststatus = getPlayerStorageValue(cid,1093)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um mechanical fish.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,10224,1)
setPlayerStorageValue(cid,1093,1)
end
return 0
end
return 1
end
