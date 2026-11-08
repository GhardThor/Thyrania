--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=82, y=517, z=7}

if item.uid ==2037 then
queststatus = getPlayerStorageValue(cid,5001)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você precisa de uma entrada que pode ser obtida na Anihilator.")
end
return 0
end
return 1
end
