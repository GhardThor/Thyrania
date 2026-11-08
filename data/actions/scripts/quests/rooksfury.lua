--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==9999 then
queststatus = getPlayerStorageValue(cid,9999)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já recebeu seu prêmio...")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Emperor Trident. Seu sacrificio sera recompensado futuramente.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,6534,1)
doPlayerAddExp(cid,5000)
setPlayerStorageValue(cid,9999,1)
end
return 0
end
return 1
end
