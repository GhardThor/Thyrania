--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1060 then
queststatus = getPlayerStorageValue(cid,1060)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Relic Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7383,1)
setPlayerStorageValue(cid,1060,1)
end
return 0
end
return 1
end
