--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1021 then
queststatus = getPlayerStorageValue(cid,1021)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Nugget de Ouro.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2157,1)
setPlayerStorageValue(cid,1021,1)
end
return 0
end
return 1
end
