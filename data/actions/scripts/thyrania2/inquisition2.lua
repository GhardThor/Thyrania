--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=898, y=940, z=9}

if item.uid ==8033 then
queststatus = getPlayerStorageValue(cid,99211)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você prescisa falar com Danubio para entrar nessa sala.")
end
return 0
end
return 1
end
