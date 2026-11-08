--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8020 then
queststatus = getPlayerStorageValue(cid,8020)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a key of numerous locks.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8978,1)
setPlayerStorageValue(cid,8020,1)
end
return 0
end
return 1
end
