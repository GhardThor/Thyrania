--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1005 then
queststatus = getPlayerStorageValue(cid,1005)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Dwarven Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2504,1)
setPlayerStorageValue(cid,1005,1)
end
return 0
end
return 1
end
