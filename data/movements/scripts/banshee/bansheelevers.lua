function onStepIn(cid, item, position, fromPosition)

levers = {x=875, y=905, z=8, stackpos=1}
lever1 = getThingfromPos(levers)
levers2 = {x=877, y=905, z=8, stackpos=1}
lever2 = getThingfromPos(levers2)
levers3 = {x=879, y=905, z=8, stackpos=1}
lever3 = getThingfromPos(levers3)
levers4 = {x=875, y=906, z=8, stackpos=1}
lever4 = getThingfromPos(levers4)
levers5 = {x=877, y=906, z=8, stackpos=1}
lever5 = getThingfromPos(levers5)
levers6 = {x=879, y=906, z=8, stackpos=1}
lever6 = getThingfromPos(levers6)
plever = {x=877, y=908, z=8, stackpos=255}
lvl = getPlayerStorageValue(cid,2200)
telepos = {x = 868, y = 854 , z = 7}

      if item.actionid == 2200 and lever1.itemid == 1421 and lever2.itemid == 1421 and lever3.itemid == 1423 and lever4.itemid == 1421 and lever5.itemid == 1423 and lever6.itemid == 1423 and lvl == -1 then
      setPlayerStorageValue(cid,2200,1)
      doTeleportThing(cid, telepos)
      doSendMagicEffect(plever, 6)
      elseif item.actionid == 2200 and lever1.itemid == 1421 and lever2.itemid == 1421 and lever3.itemid == 1423 and lever4.itemid == 1421 and lever5.itemid == 1423 and lever6.itemid == 1423 and lvl == 1 then
      doPlayerSendTextMessage(cid,22,"Você já terminou esta Seal.")
      else
      doPlayerSendTextMessage(cid,22,"A combinação não encaixa.")
      doSendMagicEffect(plever,2)
      end

return 1
end