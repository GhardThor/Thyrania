function onUse(cid, item, fromPosition, itemEx, toPosition)

newnPosition = {x=708, y=830, z=8} ---Posição da sala das recompensas apos dar USE no túmulo.
        if getPlayerStorageValue(cid, 21545) == 3 then
doTeleportThing(cid,newnPosition)
doSendMagicEffect(newnPosition,10)
else
return 0
end

return 1
end