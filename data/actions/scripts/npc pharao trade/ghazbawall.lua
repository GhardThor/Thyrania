function onUse(cid, item, frompos, item2, topos)

itempos = {x=658, y=215, z=10, stackpos=1}
itemid = 7132
item1 = getThingfromPos(itempos)
item2pos = {x=659, y=215, z=10, stackpos=2}
item2id = 1354
item2 = getThingfromPos(item2pos)
item3pos = {x=660, y=215, z=10, stackpos=2}
item3id = 1354
item3 = getThingfromPos(item3pos)
item4pos = {x=660, y=210, z=10, stackpos=1}
item4id = 1354
item4 = getThingfromPos(item4pos)
item5pos = {x=659, y=216, z=10, stackpos=1}
item5id = 1354
item5 = getThingfromPos(item5pos)
item6pos = {x=659, y=214, z=10, stackpos=2}
item6id = 1354
item6 = getThingfromPos(item6pos)

monster = "Demon"
poki = {x=659, y=217, z=10}
monster2 = "Behemoth"
poki2 = {x=660, y=217, z=10}
monster3 = "Plaguesmith"
poki3 = {x=658, y=217, z=10}

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item1.uid,1)
doRemoveItem(item2.uid,1)
doRemoveItem(item3.uid,1)
doRemoveItem(item6.uid,1)
doCreateItem(itemid,1,item5pos)
doSummonCreature(monster2,poki2)
doSummonCreature(monster3,poki3)
doSummonCreature(monster,poki)
doSendMagicEffect(item1pos,15)
doSendMagicEffect(item2pos,15)
doSendMagicEffect(item3pos,15)
elseif item.itemid == 1946 then
doPlayerSendTextMessage(cid,22,"It seems that the lever is stuck.")
end

return 1
end