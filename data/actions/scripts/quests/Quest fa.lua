--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1024 then
queststatus = getPlayerStorageValue(cid,1024)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este esqueleto está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Fire Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2432,1)
setPlayerStorageValue(cid,1024,1)
end
return 0
end
return 1
end
