--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2234 then
queststatus = getPlayerStorageValue(cid,2234)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Rat Toy.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7487,1)
setPlayerStorageValue(cid,2234,1)
end
return 0
end
return 1
end
