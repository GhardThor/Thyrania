function onUse(cid, item, frompos, item2, topos)
door = {x=156, y=462, z=7}
if item.uid ==2033 then
if getPlayerStorageValue(cid,62136) == 1 then
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,"You need do Dijin Quest for enter!")
end
return 0
end
return 1
end