function onUse(cid, item, frompos, item2, topos)

itempos = {x=315, y=354, z=5, stackpos=1}
itemid = 1304
item1 = getThingfromPos(itempos)

itempos2 = {x=315, y=355, z=5, stackpos=1}
itemid2 = 1304
item2 = getThingfromPos(itempos2)

itempos3 = {x=315, y=350, z=5, stackpos=1}
itemid3 = 1304
item3 = getThingfromPos(itempos3)

itempos4 = {x=315, y=351, z=5, stackpos=1}
itemid4 = 1304
item4 = getThingfromPos(itempos4)

if item.itemid == 1946 then
doTransformItem(item.uid,1945)
doRemoveItem(item1.uid,1)
doRemoveItem(item2.uid,1)
doCreateItem(itemid,1,itempos3)
doCreateItem(itemid2,1,itempos4)
elseif item.itemid == 1945 then
doTransformItem(item.uid,1946)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid2,1,itempos2)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
end

return 1
end