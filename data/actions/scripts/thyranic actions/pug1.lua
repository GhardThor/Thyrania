--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2168 then
queststatus = getPlayerStorageValue(cid,8586756)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você encontrou a garrafa de pug.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,8586756,2)
coins_uid = doPlayerAddItem(cid,5802,1)
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"Você já pegou a garrafa.")
 
else
doPlayerSendTextMessage(cid,22,"Você precisa falar com Pug para poder pegar a garrafa.")
end
return 0
end
return 1
end
