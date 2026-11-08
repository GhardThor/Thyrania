--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1066 then
queststatus = getPlayerStorageValue(cid,1066)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Noble Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2486,1)
setPlayerStorageValue(cid,1066,1)
end
return 0
end
return 1
end
