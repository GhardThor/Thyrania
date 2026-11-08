--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1050 then
queststatus = getPlayerStorageValue(cid,1050)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Its empity.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Coração de fogo.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2353,1)
setPlayerStorageValue(cid,1050,1)
end
return 0
end
return 1
end
