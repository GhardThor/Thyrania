  function onUse(cid, item, fromPosition, itemEx, toPosition)
				if item.uid ==8008 then
				queststatus = getPlayerStorageValue(cid,8007)
				if queststatus == 1 then
				
                elseif getCreaturePosition(cid).y < toPosition.y then
                        doTeleportThing(cid, {x=toPosition.x,y=toPosition.y+1,z=toPosition.z}, TRUE)
                else
                        doTeleportThing(cid, {x=toPosition.x,y=toPosition.y-1,z=toPosition.z}, TRUE)
                end
                doCreatureSay(cid, "Abra o bau para sair!", TALKTYPE_ORANGE_1)
                doSendMagicEffect(getCreaturePosition(cid), 10)
        else
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Somente quem falou com Sihgeta pode passar.")
        end
        return TRUE
end 


