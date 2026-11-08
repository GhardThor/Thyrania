--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1056 then
queststatus = getPlayerStorageValue(cid,1056)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou o Pente da Sereia, ele prova que voce completou o desafio, agora voce esta habilitado a entrar no submundo.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5945,1)
setPlayerStorageValue(cid,1056,1)
end
return 0
end
return 1
end
