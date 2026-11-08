--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8030 then
queststatus = getPlayerStorageValue(cid,8030)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Golden Mace.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2437,1)
setPlayerStorageValue(cid,8030,1)
end
return 0
end
return 1
end
