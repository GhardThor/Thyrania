--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2231 then
queststatus = getPlayerStorageValue(cid,2231)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Carlin Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2395,1)
setPlayerStorageValue(cid,2231,1)
end
return 0
end
return 1
end
