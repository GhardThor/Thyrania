function onStepIn(cid, item, position, fromPosition)

levers = {x=804, y=824, z=9, stackpos=1}
lever1 = getThingfromPos(levers)
plever = {x=803, y=823, z=9, stackpos=255}
plever2 = {x=803, y=825, z=9, stackpos=255}
plever3 = {x=804, y=824, z=9, stackpos=255}
lvl = getPlayerStorageValue(cid,2213)
telepos = {x = 868, y = 858, z = 7}

      if item.actionid == 2213 and lever1.itemid == 6547 and lvl == -1 then
      setPlayerStorageValue(cid,2213,1)
      doTeleportThing(cid, telepos)
      doSendMagicEffect(plever, 6)
      doSendMagicEffect(plever2, 6)
      doSendMagicEffect(plever3, 12)
      doRemoveItem(lever1.uid,1)
      elseif item.actionid == 2213 and lever1.itemid == 6547 and lvl == 1 then
      doPlayerSendTextMessage(cid,22,"Você já terminou esta Seal.")
      else
      doPlayerSendTextMessage(cid,22,"Ponha o objeto para sacrifício.")
      doSendMagicEffect(cid,2)
      end

return 1
end