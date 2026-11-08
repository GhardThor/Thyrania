function onUse(cid, item, fromPosition, itemEx, toPosition)
local tp = {x=156, y=462, z=7}
local storage = 2200
if getPlayerStorageValue(cid, storage) == 1 then
doTeleportThing(cid, tp)
doSendMagicEffect(toPosition, 12)
else
doPlayerSendTextMessage(cid,22,"You need do Dijin Quest for enter!")
end
return TRUE
end