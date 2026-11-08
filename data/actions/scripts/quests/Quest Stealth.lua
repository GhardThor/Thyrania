--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1006 then
queststatus = getPlayerStorageValue(cid,1006)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Esta cova está vazia.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Stealth Ring.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2165,1)
setPlayerStorageValue(cid,1006,1)
end
return 0
end
return 1
end
