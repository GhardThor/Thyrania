--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1008 then
queststatus = getPlayerStorageValue(cid,1008)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Esta cova está vazia.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Life Ring.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2168,1)
setPlayerStorageValue(cid,1008,1)
end
return 0
end
return 1
end
