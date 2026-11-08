--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1070 then
queststatus = getPlayerStorageValue(cid,1070)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você abriu o bug.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Claw of The Noxious Spawn.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,10309,1)
setPlayerStorageValue(cid,1070,1)
end
return 0
end
return 1
end
