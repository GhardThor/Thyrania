--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1023 then
queststatus = getPlayerStorageValue(cid,1023)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Helmet of the Deep.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5461,1)
setPlayerStorageValue(cid,1023,1)
end
return 0
end
return 1
end
