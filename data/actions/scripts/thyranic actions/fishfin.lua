--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==5066 then
queststatus = getPlayerStorageValue(cid,5066)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Fish Fin.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5895,1)
setPlayerStorageValue(cid,5066,1)
end
return 0
end
return 1
end
