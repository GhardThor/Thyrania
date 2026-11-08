--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2235 then
queststatus = getPlayerStorageValue(cid,2235)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Red Pillow.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7485,1)
setPlayerStorageValue(cid,2235,1)
end
return 0
end
return 1
end
