function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 1087 then
        queststatus = getPlayerStorageValue(cid,1087)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found an bunny slippers.")
               doPlayerAddItem(cid,2644,1)
               setPlayerStorageValue(cid,1087,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1088 then
        queststatus = getPlayerStorageValue(cid,1087)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a  BOH.")
               doPlayerAddItem(cid,2195,1)
               setPlayerStorageValue(cid,1087,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1089 then
        queststatus = getPlayerStorageValue(cid,1087)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Pirate Boots.")
               doPlayerAddItem(cid,5462,1)
               setPlayerStorageValue(cid,1087,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
    end
       return 1
end
