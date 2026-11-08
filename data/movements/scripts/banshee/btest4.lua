function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 784, y = 810 , z = 9}
lol = getPlayerPosition(cid)
lvl = getPlayerStorageValue(cid,2213)

if item.actionid == 2220 and lvl == -1 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você não completou a Seal4.")
else
end
end