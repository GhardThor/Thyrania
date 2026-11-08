--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8014 then
queststatus = getPlayerStorageValue(cid,8014)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a Medal.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8885,1)
doSetItemSpecialDescription(trofeu,'Esta medalha foi concedido a ' .. getCreatureName(cid) .. '.')
setPlayerStorageValue(cid,8014,1)
end
return 0
end
return 1
end
