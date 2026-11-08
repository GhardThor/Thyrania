function onUse(cid, item, frompos, item2, topos)


local pausa = 10000

local door = {x=435, y=242, z=5, stackpos=1}
local ddoor = getThingfromPos(door)

-------- ITEM --------

local open_door = 8550

local itemU = 1070

local verify = 0 --- NÃO MEXA AQUI

-------- PRIMEIRO SISTEMA --------


if item2.uid == itemU then
if ddoor.itemid ~= verify then
doTransformItem(ddoor.uid,open_door)
addEvent(close,pausa,door)
end
else
doPlayerSendCancel(cid,"This key can not be used here")
end
return 1
end

function close(door)
-------- ITEM --------

local to_close_door = 8549

------- SEGUNDO SISTEMA --------

local the_close_door = getThingfromPos(door)
doTransformItem(the_close_door.uid,to_close_door)
end