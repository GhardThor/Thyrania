--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=839, y=545, z=6}
playerpos = getPlayerPosition(cid)

if item.uid ==1094 then
queststatus = getPlayerStorageValue(cid,1094)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você está liberado para pegar a rose, e completar a quest.")
setPlayerStorageValue(cid,2103,1)
doSendAnimatedText(playerpos, "ROSE", 198)
end
return 0
end
return 1
end

