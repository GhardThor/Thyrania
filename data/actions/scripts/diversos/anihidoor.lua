--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=116, y=622, z=8}

if item.uid ==2035 then
queststatus = getPlayerStorageValue(cid,5001)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Por favor, não esqueça de retirar sua present box antes de sair.")
end
return 0
end
return 1
end
