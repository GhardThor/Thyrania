--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1018 then
queststatus = getPlayerStorageValue(cid,1018)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Ring of Healing.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2214,1)
setPlayerStorageValue(cid,1018,1)
end
return 0
end
return 1
end
