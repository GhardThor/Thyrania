--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=82, y=517, z=7}

if item.uid ==8880 then
queststatus = getPlayerStorageValue(cid,1056)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem terminou o desafio da sereia é capaz de passar essa porta.")
end
return 0
end
return 1
end
