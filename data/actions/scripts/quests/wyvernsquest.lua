--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1054 then
queststatus = getPlayerStorageValue(cid,1054)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Somente lava...")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Wand of Inferno.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2187,1)
setPlayerStorageValue(cid,1054,1)
end
return 0
end
return 1
end
