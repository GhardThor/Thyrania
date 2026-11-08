function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 784, y = 800 , z = 9}
lol = getPlayerPosition(cid)
lvl = getPlayerStorageValue(cid,2193)

if item.actionid == 2217 and lvl == -1 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você não completou a Seal1.")
else
end
end