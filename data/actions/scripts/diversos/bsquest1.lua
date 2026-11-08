function onUse(cid, item, frompos, item2, topos)

itempos = {x=373, y=456, z=9, stackpos=1}
itemid = 1027
item3 = getThingfromPos(itempos)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
end

return 1
end