--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2233 then
queststatus = getPlayerStorageValue(cid,2233)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Chain Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2464,1)
setPlayerStorageValue(cid,2233,1)
end
return 0
end
return 1
end
