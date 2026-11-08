--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8042 then
queststatus = getPlayerStorageValue(cid,159753)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You Have found a Aol and 10k.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2160,100)
coins_uid = doPlayerAddItem(cid,2173,1)
setPlayerStorageValue(cid,2042,1)
end
return 0
end
return 1
end