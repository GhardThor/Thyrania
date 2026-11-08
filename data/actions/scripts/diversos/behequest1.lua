--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2042 then
queststatus = getPlayerStorageValue(cid,2042)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Guardian Halberd.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2427,1)
setPlayerStorageValue(cid,2042,1)
end
return 0
end
return 1
end
