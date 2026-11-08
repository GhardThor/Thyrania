--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2165 then
queststatus = getPlayerStorageValue(cid,2165)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Rapier e uma Doublet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2384,1)
coins_uid = doPlayerAddItem(cid,2485,1)
setPlayerStorageValue(cid,2165,1)
end
return 0
end
return 1
end
