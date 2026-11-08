--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1011 then
queststatus = getPlayerStorageValue(cid,1011)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Blue Robe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2656,1)
setPlayerStorageValue(cid,1011,1)
end
return 0
end
return 1
end
