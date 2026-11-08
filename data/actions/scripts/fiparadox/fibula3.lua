--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2175 then
queststatus = getPlayerStorageValue(cid,2175)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a Warrior Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2475,1)
setPlayerStorageValue(cid,2175,1)
end
return 0
end
return 1
end