--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=291, y=349, z=8}
monster = "Dragon" ------ nome do monstro
pos = {x=291, y=353, z=9} ---posicao em que o monstro ira aparecer

if item.uid ==2243 then
queststatus = getPlayerStorageValue(cid,62134)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)
doSummonCreature(monster,pos)

else
doPlayerSendTextMessage(cid,22,"You need scrifice you lamp first.")
end
return 0
end
return 1
end
