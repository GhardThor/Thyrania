--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1015 then
queststatus = getPlayerStorageValue(cid,1015)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Fire Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2392,1)
setPlayerStorageValue(cid,1015,1)
end
return 0
end
return 1
end
