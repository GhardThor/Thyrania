local newPos = {x=1123, y=660, z=6}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 8006 and item.itemid == 9177 then
    if getPlayerStorageValue(cid,8007) then
        doTeleportThing(cid, newPos, TRUE)
		        doPlayerSendTextMessage(cid,MESSAGE_STATUS_WARNING, "Ops parece que algo errado aconteceu quando vc abriu essa porta. Entre no tp")
				doSendMagicEffect(getCreaturePosition(cid), math.random(1, 67))
    else
        doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Somente quem falou com Sihgeta pode passar.")
    end
end
end  



