--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1013 then
queststatus = getPlayerStorageValue(cid,1013)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou 10 platinum coins.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2152,10)
setPlayerStorageValue(cid,1013,1)
end
return 0
end
return 1
end
