--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1002 then
queststatus = getPlayerStorageValue(cid,1002)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"O Skeleton está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou um Crusader Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2497,1)
setPlayerStorageValue(cid,1002,1)
end
return 0
end
return 1
end
