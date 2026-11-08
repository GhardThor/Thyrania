--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2001 then
queststatus = getPlayerStorageValue(cid,2001)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Se procura por otro prêmio vá atrás da Rook's Fury.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Katana.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2412,1)
setPlayerStorageValue(cid,2001,1)
end
return 0
end
return 1
end
