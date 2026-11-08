--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1014 then
queststatus = getPlayerStorageValue(cid,1014)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Plate Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2647,1)
setPlayerStorageValue(cid,1014,1)
end
return 0
end
return 1
end
