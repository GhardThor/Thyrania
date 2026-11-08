--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8019 then
queststatus = getPlayerStorageValue(cid,8019)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Solar Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8925,1)
setPlayerStorageValue(cid,8019,1)
end
return 0
end
return 1
end
