--
function onUse(cid, item, frompos, item2, topos)
 
inquisition1 = {x=1128, y=533, z=8}

if item.uid ==8041 then
queststatus = getPlayerStorageValue(cid,8840793)
if queststatus == 1 then

doTeleportThing(cid,inquisition1)
doSendMagicEffect(topos,12)
if getPlayerLevel(cid) >= -9 then --checking level
else
doPlayerSendCancel(cid, "Sorry, seu level é maior que 9.")
end

else
doPlayerSendTextMessage(cid,22,"Apenas Sorcerer's podem passar por essa porta.")
end
return 0
end
return 1
end
