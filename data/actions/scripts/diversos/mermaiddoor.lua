--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=844, y=561, z=7}

if item.uid ==2039 then
queststatus = getPlayerStorageValue(cid,1056)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Não esqueça do seu prêmio.")
end
return 0
end
return 1
end
