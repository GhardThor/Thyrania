--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1010 then
queststatus = getPlayerStorageValue(cid,1010)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Skull Staff.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2436,1)
setPlayerStorageValue(cid,1010,1)
end
return 0
end
return 1
end
