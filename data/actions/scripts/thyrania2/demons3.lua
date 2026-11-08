--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8029 then
queststatus = getPlayerStorageValue(cid,8029)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have found a SpellBook of Mind Controll.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8902,1)
setPlayerStorageValue(cid,8029,1)
end
return 0
end
return 1
end
