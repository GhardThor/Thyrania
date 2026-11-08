--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1065 then
queststatus = getPlayerStorageValue(cid,1065)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Crown Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2491,1)
setPlayerStorageValue(cid,1065,1)
end
return 0
end
return 1
end
