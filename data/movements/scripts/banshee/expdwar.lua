function onStepIn(cid, item, position, fromPosition)

player1pos = {x = 214, y = 86 , z = 11}
lol = getPlayerPosition(cid)
lvl = getPlayerStorageValue(cid,8586599)

if item.actionid == 2177 and lvl <= 2 then
doTeleportThing(cid, player1pos)
doSendMagicEffect(lol, 12)
doPlayerSendTextMessage(cid,22,"Você precisa ser membro da sociedade dos exploradores para passar.")
else
end
end