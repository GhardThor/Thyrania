function onUse(cid, item, frompos, item2, topos)

itempos = {x=227, y=172, z=14, stackpos=1}
itemposs = {x=227, y=171, z=14, stackpos=1}
itemid = 1546
item3 = getThingfromPos(itempos)
item4 = getThingfromPos(itemposs)

if item.itemid == 3697 then
doTransformItem(item.uid,3698)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
elseif item.itemid == 3698 then
doTransformItem(item.uid,3697)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid,1,itemposs)
end

return 1
end