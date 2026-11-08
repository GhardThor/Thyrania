--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1068 then
queststatus = getPlayerStorageValue(cid,1068)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Crytal of Power.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,9980,1)
setPlayerStorageValue(cid,1068,1)
end
return 0
end
return 1
end
