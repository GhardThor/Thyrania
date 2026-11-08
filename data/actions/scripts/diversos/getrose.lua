--
function onUse(cid, item, frompos, item2, topos)
 
 playerpos = getPlayerPosition(cid)
 
if item.uid ==2102 then
queststatus = getPlayerStorageValue(cid,2102)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You have a found rose, now you need get a hydra egg in Venga.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2744,1)
setPlayerStorageValue(cid,2102,1)
doSendAnimatedText(playerpos, "HYDRA EGG", 198)
end
return 0
end
return 1
end
