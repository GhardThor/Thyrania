function onUse(cid, item, frompos, item2, topos)
if item.uid == 5011 then
     queststatus = getPlayerStorageValue(cid,5011)
         if queststatus == -1 then
            if getPlayerLevel(cid) >= 20 then
               doPlayerSendTextMessage (cid,22,"You have found a ring of healing.")
               container = doPlayerAddItem(cid,2214,1)
               setPlayerStorageValue(cid,5011,1)
            else
                doPlayerSendTextMessage(cid,22,"You need level 20 to get prize.")
            end
         else
              doPlayerSendTextMessage(cid,22,"It is empty.")
         end
    end
    return 1
end
