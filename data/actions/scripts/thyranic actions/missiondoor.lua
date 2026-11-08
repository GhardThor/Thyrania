local newPos = {x=1077, y=332, z=7}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 8005 and item.itemid == 9175 then
    if getPlayerStorageValue(cid,8004) then
        doTeleportThing(cid, newPos, TRUE)
				doSendMagicEffect(getCreaturePosition(cid), math.random(1, 67))
    else
        doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Somente quem tem giant ape hair pode passar por essa porta.")
    end
end
end  