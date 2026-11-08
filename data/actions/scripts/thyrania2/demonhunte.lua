--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8018 then
queststatus = getPlayerStorageValue(cid,8018)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Golden Bird.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8976,1)
setPlayerStorageValue(cid,8018,1)
end
return 0
end
return 1
end
