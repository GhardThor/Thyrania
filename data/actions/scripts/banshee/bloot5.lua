--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2229 then
queststatus = getPlayerStorageValue(cid,2229)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Boots of Haste.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2195,1)
setPlayerStorageValue(cid,2229,1)
end
return 0
end
return 1
end
