--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1055 then
queststatus = getPlayerStorageValue(cid,1055)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já recebeu seu prêmio...")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Bright Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2407,1)
setPlayerStorageValue(cid,1055,1)
end
return 0
end
return 1
end
