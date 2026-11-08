--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8000 then
queststatus = getPlayerStorageValue(cid,8000)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It's Empty")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Dragon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2516,1)
setPlayerStorageValue(cid,8000,1)
end
return 0
end
return 1
end
