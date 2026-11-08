function onUse(cid, item, frompos, item2, topos)
door = {x=491, y=384, z=5}
if item.uid ==2104 then
queststatus = getPlayerStorageValue(cid,2102)
queststatus1 = getPlayerStorageValue(cid,61321)
if queststatus1 <= 0 then
if queststatus == 1 then
doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid, 61321, 1)
else
doPlayerSendTextMessage(cid,22,"You need talk with statue of Lord Lizard for enter.")
end
else
doPlayerSendTextMessage(cid,22,"You already do the quest.")
return FALSE
end
end
return TRUE
end