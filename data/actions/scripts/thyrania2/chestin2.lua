--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8035 then
queststatus = getPlayerStorageValue(cid,8034)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já recebeu seu prêmio...")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um SpellBook Of Dark Mysteries.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8918,1)
setPlayerStorageValue(cid,8034,1)
end
return 0
end
return 1
end
