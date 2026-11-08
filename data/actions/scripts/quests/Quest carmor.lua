--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1025 then
queststatus = getPlayerStorageValue(cid,1025)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Nao ha nada aqui.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Crown Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2487,1)
setPlayerStorageValue(cid,1025,1)
end
return 0
end
return 1
end
