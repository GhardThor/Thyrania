function onUse(cid, item, frompos, item2, topos)
 
door = {x=149, y=162, z=8}

if item.uid ==2109 then
queststatus = getPlayerStorageValue(cid,2109)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"Have you finished the mission.")

else
doPlayerSendTextMessage(cid,22,"You need to get the mandrake to enter this room.")
end
return 0
end
return 1
end
