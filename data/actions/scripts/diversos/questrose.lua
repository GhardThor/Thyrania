function onUse(cid, item, frompos, item2, topos)
 door = {x=835, y=517, z=11}
if item.uid ==2101 then
queststatus = getPlayerStorageValue(cid,2103)
if queststatus == 1 then
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,"You need to talk with statue of Lord Lizard to get your prize.")
end
return 0
end
return 1
end
