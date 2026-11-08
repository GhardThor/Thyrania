--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8004 then
queststatus = getPlayerStorageValue(cid,8004)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma giant ape hair.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,4843,1)
setPlayerStorageValue(cid,8004,1)
end
return 0
end
return 1
end
