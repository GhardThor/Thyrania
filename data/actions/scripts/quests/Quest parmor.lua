--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1001 then
queststatus = getPlayerStorageValue(cid,1001)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Brass Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2465,1)
setPlayerStorageValue(cid,1001,1)
end
return 0
end
return 1
end
