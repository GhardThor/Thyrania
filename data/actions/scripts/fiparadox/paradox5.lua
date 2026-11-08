--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2183 then
queststatus = getPlayerStorageValue(cid,2183)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"it is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Phoenix Egg.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2328,1)
setPlayerStorageValue(cid,2183,1)
end
return 0
end
return 1
end
