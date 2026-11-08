--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1017 then
queststatus = getPlayerStorageValue(cid,1017)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Guardian Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2515,1)
setPlayerStorageValue(cid,1017,1)
end
return 0
end
return 1
end
