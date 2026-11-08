function onUse(cid, item, frompos, item2, topos)

itempos = {x=814, y=509, z=9, stackpos=1}
itemid = 1718
item3 = getThingfromPos(itempos)
item2pos = {x=815, y=509, z=9, stackpos=1}
item2id = 1718
item4 = getThingfromPos(item2pos)
item3pos = {x=814, y=508, z=9, stackpos=1}
item3id = 1050
item5 = getThingfromPos(item3pos)
item4pos = {x=815, y=508, z=9, stackpos=1}
item4id = 1050
item6 = getThingfromPos(item4pos)
item5pos = {x=813, y=509, z=9, stackpos=1}
item5id = 1718
item7 = getThingfromPos(item5pos)
item6pos = {x=816, y=509, z=9, stackpos=1}
item6id = 1718
item8 = getThingfromPos(item6pos)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
doRemoveItem(item5.uid,1)
doRemoveItem(item6.uid,1)
doCreateItem(item5id,1,item5pos)
doCreateItem(item6id,1,item6pos)

elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid,1,item2pos)
doCreateItem(item3id,1,item3pos)
doCreateItem(item4id,1,item4pos)
doRemoveItem(item7.uid,1)
doRemoveItem(item8.uid,1)
end

return 1
end