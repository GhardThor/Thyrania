local newPos = {x=112, y=105, z=12}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1095 and item.itemid == 8553 then
    if getPlayerStorageValue(cid,1096) then
        doTeleportThing(cid, newPos, TRUE)
				doSendMagicEffect(getCreaturePosition(cid), math.random(1, 67))
    else
        doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Somente quem se alistou e realmente fez a black knight quest pode fazer a inquisition quest.")
    end
end
end  