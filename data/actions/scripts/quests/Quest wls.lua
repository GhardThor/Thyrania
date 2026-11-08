--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1027 then
queststatus = getPlayerStorageValue(cid,1027)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Nao ha nada aqui.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um War Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2454,1)
setPlayerStorageValue(cid,1027,1)
end
return 0
end
return 1
end
