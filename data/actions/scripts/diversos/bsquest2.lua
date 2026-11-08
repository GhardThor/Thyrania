function onUse(cid, item, frompos, item2, topos)

itempos = {x=373, y=453, z=9, stackpos=1}
itemid = 1027
item1 = getThingfromPos(itempos)

itempos2 = {x=375, y=455, z=9, stackpos=1}
itemid2 = 1027
item2 = getThingfromPos(itempos2)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item1.uid,1)
doRemoveItem(item2.uid,1)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid2,1,itempos2)
end

return 1
end