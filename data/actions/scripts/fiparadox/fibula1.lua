--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2173 then
queststatus = getPlayerStorageValue(cid,2173)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Knight Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2430,1)
setPlayerStorageValue(cid,2173,1)
end
return 0
end
return 1
end