function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 2130 then
        queststatus = getPlayerStorageValue(cid,2128)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Arbalest.")
               doPlayerAddItem(cid,5803,1)
               setPlayerStorageValue(cid,2128,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2129 then
        queststatus = getPlayerStorageValue(cid,2128)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Arcane Staff.")
               doPlayerAddItem(cid,2453,1)
               setPlayerStorageValue(cid,2128,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2128 then
        queststatus = getPlayerStorageValue(cid,2128)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Avenger.")
               doPlayerAddItem(cid,6528,1)
               setPlayerStorageValue(cid,2128,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
    end
       return 1
end
