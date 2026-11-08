--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1028 then
queststatus = getPlayerStorageValue(cid,1028)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Nao ha nada aqui.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Pirate Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5462,1)
setPlayerStorageValue(cid,1028,1)
end
return 0
end
return 1
end
