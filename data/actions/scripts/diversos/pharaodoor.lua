--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=144, y=316, z=8}

if item.uid ==2131 then
queststatus = getPlayerStorageValue(cid,2131)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Voce deve terminar a missao de Mahnas para entrar nesta sala.")
end
return 0
end
return 1
end
