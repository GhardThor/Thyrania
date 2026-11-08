function onStepIn(cid, item, position, fromPosition)

tile1 = getPlayerStorageValue(cid,2201)
tile2 = getPlayerStorageValue(cid,2202)
tile3 = getPlayerStorageValue(cid,2203)
tile4 = getPlayerStorageValue(cid,2204)
tile5 = getPlayerStorageValue(cid,2205)
tile6 = getPlayerStorageValue(cid,2206)
seal = getPlayerStorageValue(cid,2212)
telepos = {x = 863, y = 858 , z = 7}

      if item.actionid == 2212 and tile1 == -1 or tile2 == -1 or tile3 == -1 or tile4 == -1 or tile6 == -1 or tile5 == -1 then
      doPlayerSendTextMessage(cid,22,"A combinação de passos não encaixa.")
      doSendMagicEffect(cid,2)
      elseif seal == 1 then
      doPlayerSendTextMessage(cid,22,"Você já terminou esta Seal.")
      else
      setPlayerStorageValue(cid,2212,1)
      doTeleportThing(cid, telepos)
      
      end

return 1
end