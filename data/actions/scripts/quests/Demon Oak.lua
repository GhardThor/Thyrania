--- Made by Mazen ---
function onUse(cid, item, fromPosition, itemEx, toPosition)

       if item.uid == 2358 then
           queststatus = getPlayerStorageValue(cid,50090)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Demon Legs.")
               doPlayerAddItem(cid,2495,1)
               setPlayerStorageValue(cid,50090,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 2359 then
           queststatus = getPlayerStorageValue(cid,50090)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Rainbow Shield.")
               doPlayerAddItem(cid,8905,1)
               setPlayerStorageValue(cid,50090,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 2360 then
           queststatus = getPlayerStorageValue(cid,50090)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Royal Crossbow.")
               doPlayerAddItem(cid,8851,1)
               setPlayerStorageValue(cid,50090,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
        end
       elseif item.uid == 2361 then
           queststatus = getPlayerStorageValue(cid,50090)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Spellbook of Dark Mysteries.")
               doPlayerAddItem(cid,8918,1)
               setPlayerStorageValue(cid,50090,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
    end
       return 1
end