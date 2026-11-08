--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=667, y=619, z=8}

if item.uid ==1072 then
queststatus = getPlayerStorageValue(cid,1070)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Somente quem falou com pietro pode entrar nessa sala.")
end
return 0
end
return 1
end
