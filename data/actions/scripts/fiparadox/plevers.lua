function onUse(cid, item, frompos, item2, topos)

levers = {x=433, y=240, z=6, stackpos=1}
lever1 = getThingfromPos(levers)
levers2 = {x=434, y=240, z=6, stackpos=1}
lever2 = getThingfromPos(levers2)
levers3 = {x=435, y=240, z=6, stackpos=1}
lever3 = getThingfromPos(levers3)
levers4 = {x=436, y=240, z=6, stackpos=1}
lever4 = getThingfromPos(levers4)
levers5 = {x=437, y=240, z=6, stackpos=1}
lever5 = getThingfromPos(levers5)
levers6 = {x=438, y=240, z=6, stackpos=1}
lever6 = getThingfromPos(levers6)
item3pos = {x=434, y=243, z=6, stackpos=1}
item3id = 1386
item3 = getThingfromPos(item3pos)
plever = {x=434, y=244, z=6, stackpos=255}

      if item.itemid == 1945 and lever1.itemid == 1945 and lever2.itemid == 1946 and lever3.itemid == 1945 and lever4.itemid == 1946 and lever5.itemid == 1945 and lever6.itemid == 1946 then
      doCreateItem(1386,1,item3pos)
      doTransformItem(item.uid,item.itemid+1)
      elseif item.itemid == 1946 and lever1.itemid == 1945 and lever2.itemid == 1946 and lever3.itemid == 1945 and lever4.itemid == 1946 and lever5.itemid == 1945 and lever6.itemid == 1946 then
      doRemoveItem(item3.uid,1)
      doTransformItem(item.uid,item.itemid-1)
      else
      doPlayerSendTextMessage(cid,22,"The levers do not fit.")
      doSendMagicEffect(plever,2)
      end

return 1
end