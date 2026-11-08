function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 291, y = 354 , z = 9}
player2pos = {x = 291, y = 357 , z = 9}
lol = getPlayerPosition(cid)
lvl = getPlayerLevel(cid)

if item.actionid == 2224 and doPlayerRemoveItem(cid,2396,1) == 0 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você precisa de uma ice rapier para anular o fogo.")
else
doTeleportThing(cid, player2pos)
end
end