function onUse(cid, item, frompos, item2, topos)

itempos = {x=815, y=536, z=7, stackpos=1}
itemid = 4646
item3 = getThingfromPos(itempos)
item2pos = {x=815, y=536, z=7, stackpos=1}
item2id = 4526
item4 = getThingfromPos(item2pos)
item3pos = {x=815, y=539, z=7, stackpos=1}
item3id = 4644
item5 = getThingfromPos(item3pos)
item4pos = {x=815, y=539, z=7, stackpos=1}
item4id = 4526
item6 = getThingfromPos(item4pos)
item5pos = {x=815, y=536, z=7, stackpos=1}
item5id = 1284
item7 = getThingfromPos(item5pos)
item6pos = {x=815, y=537, z=7, stackpos=1}
item6id = 1284
item8 = getThingfromPos(item6pos)
item7pos = {x=815, y=538, z=7, stackpos=1}
item7id = 1284
item9 = getThingfromPos(item7pos)
item8pos = {x=815, y=539, z=7, stackpos=1}
item8id = 1284
item10 = getThingfromPos(item8pos)
item9pos = {x=815, y=537, z=7, stackpos=1}
item9id = 4608
item11 = getThingfromPos(item9pos)


if item.itemid == 5391 then
doTransformItem(item.uid,5390)
doRemoveItem(item3.uid,1)
doRemoveItem(item5.uid,1)
doCreateItem(item5id,1,item5pos)
doCreateItem(item6id,1,item6pos)
doCreateItem(item7id,1,item7pos)
doCreateItem(item8id,1,item8pos)

elseif item.itemid == 5390 then
doTransformItem(item.uid,5391)
doCreateItem(itemid,1,itempos)
doCreateItem(item2id,1,item2pos)
doCreateItem(item3id,1,item3pos)
doCreateItem(item4id,1,item4pos)
doCreateItem(item9id,1,item6pos)
doCreateItem(item9id,1,item7pos)

end

return 1
end