--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2225 then
queststatus = getPlayerStorageValue(cid,2225)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Stone Skin Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2197,1)
setPlayerStorageValue(cid,2225,1)
end
return 0
end
return 1
end
