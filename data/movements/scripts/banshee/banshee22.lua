function onStepIn(cid, item, position, fromPosition)

levers = {x=780, y=776, z=10, stackpos=2}
lever1 = getThingfromPos(levers)
levers2 = {x=780, y=777, z=10, stackpos=2}
lever2 = getThingfromPos(levers2)
levers3 = {x=780, y=778, z=10, stackpos=2}
lever3 = getThingfromPos(levers3)
levers4 = {x=780, y=779, z=10, stackpos=2}
lever4 = getThingfromPos(levers4)
levers5 = {x=780, y=780, z=10, stackpos=2}
lever5 = getThingfromPos(levers5)
plever = {x=775, y=784, z=10, stackpos=255}
lvl = getPlayerStorageValue(cid,2215)
telepos = {x = 863, y = 862, z = 7}

      if item.actionid == 2215 and lever1.itemid == 1946 and lever2.itemid == 1946 and lever3.itemid == 1945 and lever4.itemid == 1946 and lever5.itemid == 1945 and lvl == -1 then
      setPlayerStorageValue(cid,2215,1)
      doTeleportThing(cid, telepos)
      doRemoveItem(lever1.uid,1)
      doRemoveItem(lever2.uid,1)
      doRemoveItem(lever3.uid,1)
      doRemoveItem(lever4.uid,1)
      doRemoveItem(lever5.uid,1)
      doCreateItem(1945,1,levers)
      doCreateItem(1945,1,levers2)
      doCreateItem(1945,1,levers3)
      doCreateItem(1945,1,levers4)
      doCreateItem(1945,1,levers5)
      elseif item.actionid == 2215 and lever1.itemid == 1946 and lever2.itemid == 1946 and lever3.itemid == 1945 and lever4.itemid == 1946 and lever5.itemid == 1945 and lvl == 1 then
      doPlayerSendTextMessage(cid,22,"Você já terminou esta Seal.")
      else
      doPlayerSendTextMessage(cid,22,"A combinação não encaixa.")
      doSendMagicEffect(plever,2)
      end

return 1
end