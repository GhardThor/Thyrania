--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=673, y=619, z=9}

if item.uid ==1076 then
queststatus = getPlayerStorageValue(cid,1076)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)


else
doPlayerSendTextMessage(cid,22,"Somente quem terminou a 2 fase pode entrar.")
end
return 0
end
return 1
end
