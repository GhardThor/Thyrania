--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=639, y=241, z=6}

if item.uid ==1067 then
queststatus = getPlayerStorageValue(cid,2045)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Voce precisa completar a Behemoth Quest para entrar aqui.")
end
return 0
end
return 1
end
