--
function onUse(cid, item, frompos, item2, topos)
 
inquisition1 = {x=84, y=514, z=7}

if item.uid ==8032 then
queststatus = getPlayerStorageValue(cid,99211)
if queststatus == 1 then

doTeleportThing(cid,inquisition1)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Você prescisa falar com Danubio para entrar nessa sala.")
end
return 0
end
return 1
end
