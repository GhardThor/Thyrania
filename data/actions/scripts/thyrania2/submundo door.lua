--
function onUse(cid, item, frompos, item2, topos)
 
tele = {x=610, y=241, z=7}

if item.uid ==8016 then
queststatus = getPlayerStorageValue(cid,2046)
if queststatus == 1 then

doTeleportThing(cid,tele)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você está no submundo.")
end
return 0
end
return 1
end
