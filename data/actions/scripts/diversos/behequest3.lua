--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2044 then
queststatus = getPlayerStorageValue(cid,2044)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have a found the Golden Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2466,1)
setPlayerStorageValue(cid,2044,1)
end
return 0
end
return 1
end
