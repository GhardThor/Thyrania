function onStepIn(cid, item, position, fromPosition)

telepos = {x = 436, y = 242 , z = 4}
capos = {x=432, y=243, z=5, stackpos=255}
mapos = {x=432, y=239, z=5, stackpos=255}
lol = getCreatureName(cid)
player = getThingfromPos(capos)
monster = getThingfromPos(mapos)
player1pos = {x = 432, y = 243 , z = 5}

if item.actionid == 2180 then
doTeleportThing(player.uid, telepos)
doSendMagicEffect(player1pos, 12)
doTeleportThing(monster.uid, telepos)
else
doTeleportThing(player.uid, telepos)
doSendMagicEffect(player1pos, 12)
doTeleportThing(monster.uid, telepos)
end
end