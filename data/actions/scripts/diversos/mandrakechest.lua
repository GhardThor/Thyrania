function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)

if item.uid ==2107 then
queststatus = getPlayerStorageValue(cid,2107)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty")
else
doPlayerSendTextMessage(cid,22,"You have found the mandrake, now you need finish the quest.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5015,1)
setPlayerStorageValue(cid,2109,1)
doSendAnimatedText(playerpos, "FINISH!", 198)
end
return FALSE
end
return TRUE
end