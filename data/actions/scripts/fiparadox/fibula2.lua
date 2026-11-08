--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2174 then
queststatus = getPlayerStorageValue(cid,2174)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Elven Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2198,1)
setPlayerStorageValue(cid,2174,1)
end
return 0
end
return 1
end