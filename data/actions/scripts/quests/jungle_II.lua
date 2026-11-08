function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 1084 then
        queststatus = getPlayerStorageValue(cid,1084)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found an love potion.")
               doPlayerAddItem(cid,10092,1)
               setPlayerStorageValue(cid,1084,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1085 then
        queststatus = getPlayerStorageValue(cid,1084)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a  Mighty Helm of Green Sparks.")
               doPlayerAddItem(cid,10316,1)
               setPlayerStorageValue(cid,1084,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 1086 then
        queststatus = getPlayerStorageValue(cid,1084)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Incredible Mumpiz Slayer.")
               doPlayerAddItem(cid,10313,1)
               setPlayerStorageValue(cid,1084,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
    end
       return 1
end
