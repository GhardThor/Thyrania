--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1009 then
queststatus = getPlayerStorageValue(cid,1009)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Esta cova está vazia.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Energy ring.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2167,1)
setPlayerStorageValue(cid,1009,1)
end
return 0
end
return 1
end
