--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2128 then
queststatus = getPlayerStorageValue(cid,2128)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Avenger.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,6528,1)
setPlayerStorageValue(cid,2128,1)
end
return 0
end
return 1
end
