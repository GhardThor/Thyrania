-- Power Anihilator By Delton --
function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 2077 then
        queststatus = getPlayerStorageValue(cid,2077)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Golden Helmet.")
               doPlayerAddItem(cid,2471,1)
               setPlayerStorageValue(cid,2077,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2078 then
        queststatus = getPlayerStorageValue(cid,2077)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Elven Legs.")
               doPlayerAddItem(cid,2507,1)
               setPlayerStorageValue(cid,2077,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2079 then
        queststatus = getPlayerStorageValue(cid,2077)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Bunny Slipers.")
               doPlayerAddItem(cid,2644,1)
               setPlayerStorageValue(cid,2077,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
       elseif item.uid == 2080 then
        queststatus = getPlayerStorageValue(cid,2077)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Tempest Shield!")
               doPlayerAddItem(cid,2542,1)
               setPlayerStorageValue(cid,2077,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    end
       return 1
end
