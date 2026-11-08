--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2066 then
queststatus = getPlayerStorageValue(cid,2066)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Orcish Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2428,1)
setPlayerStorageValue(cid,2066,1)
end
return 0
end
return 1
end
