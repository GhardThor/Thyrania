function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 784, y = 813 , z = 9}
lol = getPlayerPosition(cid)
lvl = getPlayerStorageValue(cid,2215)

if item.actionid == 2221 and lvl == -1 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você não completou a Seal5.")
else
end
end