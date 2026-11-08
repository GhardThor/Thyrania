function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 474, y = 268 , z = 2}
player2pos = {x = 436, y = 258 , z = 7}
lol = getPlayerPosition(cid)
lvl = getPlayerLevel(cid)

if item.actionid == 2190 and lvl <= 29 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você precisa de level 30 para passar.")
else
doTeleportThing(cid, player2pos)
end
end