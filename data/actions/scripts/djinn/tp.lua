function onUse(cid, item, frompos, item2, topos)
local teleport = {x=291, y=357, z=9}
if getPlayerStorageValue(cid, 62111) <= 0 then
doTeleportThing(cid, teleport)
setPlayerStorageValue(cid, 62111, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
else
doPlayerSendTextMessage(cid, 22, "Is not possible.")
end
end