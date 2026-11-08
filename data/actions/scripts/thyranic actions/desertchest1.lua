--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==5010 then
queststatus = getPlayerStorageValue(cid,5010)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já recebeu seu prêmio...")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou 100 platinum coins.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2152,100)
setPlayerStorageValue(cid,5010,1)
end
return 0
end
return 1
end
