--
function onUse(cid, item, frompos, item2, topos)
 
tele = {x=695, y=1036, z=7}
if item.uid ==2132 then
doPlayerSetTown(cid,6)
vocation = getPlayerVocation(cid)
if vocation == 1 then
doTeleportThing(cid,tele)
doPlayerSetVocation(cid, getPlayerVocation(cid)-1)
doPlayerSendTextMessage(cid,22,"Ao alcançar level 8 você deverá escolher sua vocação novamente!")
elseif vocation == 2 then
doTeleportThing(cid,tele)
doPlayerSetVocation(cid, getPlayerVocation(cid)-2)
doPlayerSendTextMessage(cid,22,"Ao alcançar level 8 você deverá escolher sua vocação novamente!")
elseif vocation == 3 then
doTeleportThing(cid,tele)
doPlayerSetVocation(cid, getPlayerVocation(cid)-3)
doPlayerSendTextMessage(cid,22,"Ao alcançar level 8 você deverá escolher sua vocação novamente!")
elseif vocation == 4 then
doTeleportThing(cid,tele)
doPlayerSetVocation(cid, getPlayerVocation(cid)-4)
doPlayerSendTextMessage(cid,22,"Ao alcançar level 8 você deverá escolher sua vocação novamente!") 

else
doTeleportThing(cid,tele)
end
return 0
end
return 1
end