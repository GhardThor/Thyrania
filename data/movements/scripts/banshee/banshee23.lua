function onStepIn(cid, item, position, fromPosition)

levers = {x=747, y=809, z=11, stackpos=2}
lever1 = getThingfromPos(levers)
levers2 = {x=755, y=809, z=11, stackpos=2}
lever2 = getThingfromPos(levers2)
plever = {x=747, y=809, z=11, stackpos=255}
plever2 = {x=755, y=809, z=11, stackpos=255}
lvl = getPlayerStorageValue(cid,2216)
telepos = {x = 868, y = 862, z = 7}

      if item.actionid == 2216 and lever1.itemid == 2143 and lever2.itemid == 2144 and lvl == -1 then
      setPlayerStorageValue(cid,2216,1)
      doTeleportThing(cid, telepos)
      doSendMagicEffect(plever, 12)
      doSendMagicEffect(plever2, 12)
      doRemoveItem(lever1.uid,1)
      doRemoveItem(lever2.uid,1)
      elseif item.actionid == 2216 and lever1.itemid == 2143 and lever2.itemid == 2144 and lvl == 1 then
      doPlayerSendTextMessage(cid,22,"Você já terminou esta Seal.")
      else
      doPlayerSendTextMessage(cid,22,"Ponha os objetos para sacrifício.")
      doSendMagicEffect(cid,2)
      end

return 1
end