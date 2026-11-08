--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2124 then
queststatus = getPlayerStorageValue(cid,2124)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Frozen Starlight.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2361,1)
setPlayerStorageValue(cid,2124,1)
end
return 0
end
return 1
end
