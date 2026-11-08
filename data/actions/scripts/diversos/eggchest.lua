function onUse(cid, item, frompos, item2, topos)
player = {x=491, y=382, z=5}
playerpos = getPlayerPosition(cid)
if item.uid ==2105 then
queststatus = getPlayerStorageValue(cid,2105)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty")
else
doPlayerSendTextMessage(cid,22,"You have a found the hydra egg, now you need have a mandrake.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,4850,2)
setPlayerStorageValue(cid,2105)
doTeleportThing(cid,player)
doSendAnimatedText(playerpos, "MANDRAKE", 198)
end
return FALSE
end
return TRUE
end