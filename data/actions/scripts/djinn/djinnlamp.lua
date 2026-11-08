function onUse(cid, item, frompos, item2, topos)

local pos = {x=312, y=352, z=2, stackpos=255}
local getitem = getThingFromPos(pos)        

if getPlayerStorageValue(cid, 62134) <= 0 then
  if getPlayerStorageValue(cid, 61372) >= 1 then
         if getitem.itemid == 2063 then
         if doRemoveItem(getitem.uid,1) then                
                setPlayerStorageValue(cid, 62134, 1)
                doPlayerSendTextMessage(cid, 22, "Now you can enter in the door in the downstairs.")
                end
         else
          doPlayerSendCancel(cid, "This item is not a small oil lamp.")
          return FALSE
          end
         else
          doPlayerSendCancel(cid, "You need to talk with Ashtamin first")
          end
         else
         doPlayerSendCancel(cid, "You already do this quest.")
         return FALSE
         end
end
