--
function onUse(cid, item, frompos, item2, topos)
 
inquisition1 = {x=1126, y=483, z=8}

if item.uid ==8038 then
queststatus = getPlayerStorageValue(cid,8840792)
if queststatus == 1 then

doTeleportThing(cid,inquisition1)
doSendMagicEffect(topos,12)
if getPlayerLevel(cid) >= -9 then --checking level
else
doPlayerSendCancel(cid, "Sorry, seu level é maior que 9.")
end

else
doPlayerSendTextMessage(cid,22,"Apenas Knight's podem passar por essa porta.")
end
return 0
end
return 1
end
