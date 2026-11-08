--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2228 then
queststatus = getPlayerStorageValue(cid,2228)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a 100 platinum coins.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2152,100)
setPlayerStorageValue(cid,2228,1)
end
return 0
end
return 1
end
