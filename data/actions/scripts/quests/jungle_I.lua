function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 1081 then
        queststatus = getPlayerStorageValue(cid,1081)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found yalahary mask.")
               doPlayerAddItem(cid,9778,1)
               setPlayerStorageValue(cid,1081,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1082 then
        queststatus = getPlayerStorageValue(cid,1081)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a  yalahary leg.")
               doPlayerAddItem(cid,9777,1)
               setPlayerStorageValue(cid,1081,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1083 then
        queststatus = getPlayerStorageValue(cid,1081)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a yalahary armor.")
               doPlayerAddItem(cid,9776,1)
               setPlayerStorageValue(cid,1081,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
    end
       return 1
end
