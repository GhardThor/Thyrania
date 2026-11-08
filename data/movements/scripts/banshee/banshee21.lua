function onStepIn(cid, item, position, fromPosition)

monster2 = "Warlock"
pos2 = {x=773, y=775, z=10}
monster3 = "Warlock"
pos3 = {x=777, y=775, z=10}
lvl = getPlayerStorageValue(cid,2214)

if item.actionid == 2214 and lvl == -1 then
doSummonCreature(monster2,pos2)
doSummonCreature(monster3,pos3)
setPlayerStorageValue(cid,2214,1)
else
end
end