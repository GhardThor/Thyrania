--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2068 then
queststatus = getPlayerStorageValue(cid,2068)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Golem Blueprint.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,10165,1)
setPlayerStorageValue(cid,2068,1)
end
return 0
end
return 1
end
