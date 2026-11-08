--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2043 then
queststatus = getPlayerStorageValue(cid,2043)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have a found the Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,2043,1)
end
return 0
end
return 1
end
