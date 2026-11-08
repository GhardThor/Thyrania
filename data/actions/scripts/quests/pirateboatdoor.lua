--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=764, y=1279, z=4}

if item.uid ==1058 then
queststatus = getPlayerStorageValue(cid,10027)
if queststatus == 2 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem tem o Pirate Addon 1 pode entrar nesta sala.")
end
return 0
end
return 1
end
