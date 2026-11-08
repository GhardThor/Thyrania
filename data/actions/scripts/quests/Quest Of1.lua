--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1051 then
queststatus = getPlayerStorageValue(cid,1051)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Este bau está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Fire Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2392,1)
setPlayerStorageValue(cid,1051,1)
end
return 0
end
return 1
end
