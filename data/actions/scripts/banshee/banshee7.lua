function onUse(cid, item, frompos, item2, topos)

itempos = {x=879, y=906, z=8, stackpos=1}
itemid = 1421
item2id = 1423
item3 = getThingfromPos(itempos)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doCreateItem(itemid,1,itempos)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(item2id,1,itempos)
doRemoveItem(item3.uid,1)
end

return 1
end