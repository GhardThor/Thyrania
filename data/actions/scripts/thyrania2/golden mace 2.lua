--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8031 then
queststatus = getPlayerStorageValue(cid,8031)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Hammer of Whrat.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2444,1)
setPlayerStorageValue(cid,8031,1)
end
return 0
end
return 1
end
