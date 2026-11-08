--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2184 then
queststatus = getPlayerStorageValue(cid,2184)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a 10.000 gold coins.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2160,1)
setPlayerStorageValue(cid,2184,1)
end
return 0
end
return 1
end
