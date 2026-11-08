function onUse(cid, item, fromPosition, itemEx, toPosition)
       if item.uid == 2156 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found an Impaler.")
               doPlayerAddItem(cid,7435,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2157 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Necromancer Shield.")
               doPlayerAddItem(cid,6433,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
       elseif item.uid == 2158 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Elven Legs.")
               doPlayerAddItem(cid,2507,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
        end
       elseif item.uid == 2159 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Winged Helmet.")
               doPlayerAddItem(cid,2474,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
      elseif item.uid == 2160 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Steel Boots.")
               doPlayerAddItem(cid,2645,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    elseif item.uid == 2161 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a MPA.")
               doPlayerAddItem(cid,2472,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    elseif item.uid == 2162 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Onyx Flail.")
               doPlayerAddItem(cid,7421,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    elseif item.uid == 2163 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Elvish Bow.")
               doPlayerAddItem(cid,7438,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    elseif item.uid == 2164 then
        queststatus = getPlayerStorageValue(cid,2156)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Berserker.")
               doPlayerAddItem(cid,7403,1)
               setPlayerStorageValue(cid,2156,1)
           else
               doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
           end
    end
       return 1
end
