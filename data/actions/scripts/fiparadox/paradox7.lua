--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2185 then
queststatus = getPlayerStorageValue(cid,2185)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty")
 
else
doPlayerSendTextMessage(cid,22,"You found a 32 talons.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2151,32)
setPlayerStorageValue(cid,2185,1)
end
return 0
end
return 1
end
