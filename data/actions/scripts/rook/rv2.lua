--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2232 then
queststatus = getPlayerStorageValue(cid,2232)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Fishing Rod.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2580,1)
setPlayerStorageValue(cid,2232,1)
end
return 0
end
return 1
end
