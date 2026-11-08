function onUse(cid, item, frompos, item2, topos)

itempos = {x=761, y=1277, z=3, stackpos=1}
itemid = 1543
item3 = getThingfromPos(itempos)
item2pos = {x=762, y=1277, z=3, stackpos=1}
item2id = 1544
item4 = getThingfromPos(item2pos)
demon1pos = {x=755, y=1277, z=3}

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
doSummonCreature("Ron the Ripper", demon1pos)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
doCreateItem(item2id,1,item2pos)
end

return 1
end