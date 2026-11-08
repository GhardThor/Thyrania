--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1090 then
queststatus = getPlayerStorageValue(cid,1090)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um stuffed rat.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7487,1)
setPlayerStorageValue(cid,1090,1)
end
return 0
end
return 1
end
