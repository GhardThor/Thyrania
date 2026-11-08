function onUse(cid, item, frompos, item2, topos)

itempos = {x=437, y=241, z=7, stackpos=1}
itemposs = {x=436, y=241, z=7, stackpos=1}
itemid = 1388
itemid2 = 1389
item3 = getThingfromPos(itempos)
item4 = getThingfromPos(itemposs)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid2,1,itemposs)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)

end

return 1
end