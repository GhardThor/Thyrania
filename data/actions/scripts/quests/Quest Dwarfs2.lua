--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1004 then
queststatus = getPlayerStorageValue(cid,1004)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Amazon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2537,1)
setPlayerStorageValue(cid,1004,1)
end
return 0
end
return 1
end
