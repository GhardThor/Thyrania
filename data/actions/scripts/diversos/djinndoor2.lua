--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=852, y=534, z=8}

if item.uid ==2038 then
queststatus = getPlayerStorageValue(cid,1050)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você precisa da Djinn quest para entrar nessa sala.")
end
return 0
end
return 1
end
