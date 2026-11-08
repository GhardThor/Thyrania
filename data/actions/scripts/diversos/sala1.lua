function onUse(cid, item, frompos, item2, topos)

itempos = {x=90, y=39, z=8, stackpos=1}
itemid = 1546
item3 = getThingfromPos(itempos)
item2pos = {x=88, y=41, z=8, stackpos=1}
item2id = 1547
item4 = getThingfromPos(item2pos)

if item.itemid == 1945 then
doPlayerSendTextMessage(cid,22,"Você lacrou a sala de treinamento 1.")
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doCreateItem(item2id,1,item2pos)

elseif item.itemid == 1946 then
doPlayerSendTextMessage(cid,22,"Você liberou a sala de treinamento 1.")
doTransformItem(item.uid,1945)
doRemoveItem(item4.uid,1)
doCreateItem(itemid,1,itempos)
end

return 1
end