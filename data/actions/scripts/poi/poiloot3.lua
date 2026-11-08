--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2126 then
queststatus = getPlayerStorageValue(cid,2126)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Stuffed Dragon.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,6566,1)
setPlayerStorageValue(cid,2126,1)
end
return 0
end
return 1
end
