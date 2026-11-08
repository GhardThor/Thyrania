--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1052 then
queststatus = getPlayerStorageValue(cid,1052)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Knight Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2430,1)
setPlayerStorageValue(cid,1052,1)
end
return 0
end
return 1
end
