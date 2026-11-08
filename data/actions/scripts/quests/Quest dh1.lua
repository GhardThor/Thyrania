--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1029 then
queststatus = getPlayerStorageValue(cid,1029)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,1029,1)
end
return 0
end
return 1
end
