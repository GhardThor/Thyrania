--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2067 then
queststatus = getPlayerStorageValue(cid,2067)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma das partes da essência.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,4851,1)
setPlayerStorageValue(cid,2067,1)
end
return 0
end
return 1
end
