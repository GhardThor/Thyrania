--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2230 then
queststatus = getPlayerStorageValue(cid,2230)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Giant Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2393,1)
setPlayerStorageValue(cid,2230,1)
end
return 0
end
return 1
end
