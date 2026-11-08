--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2227 then
queststatus = getPlayerStorageValue(cid,2227)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Tower Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2528,1)
setPlayerStorageValue(cid,2227,1)
end
return 0
end
return 1
end
