--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2182 then
queststatus = getPlayerStorageValue(cid,2182)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Wand of Cosmic Energy.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2189,1)
setPlayerStorageValue(cid,2182,1)
end
return 0
end
return 1
end
