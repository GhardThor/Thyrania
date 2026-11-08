function onUse(cid, item, frompos, item2, topos)

itempos = {x=149, y=156, z=7, stackpos=1}
itemid = 1754
item1 = getThingfromPos(itempos)
item2pos = {x=149, y=157, z=7, stackpos=1}
item2id = 1755
item4 = getThingfromPos(item2pos)
item3pos = {x=149, y=157, z=7, stackpos=1}
item3id = 1754
item5 = getThingfromPos(item3pos)
item4pos = {x=149, y=158, z=7, stackpos=1}
item4id = 1755
item6 = getThingfromPos(item4pos)
item5id = 430

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item1.uid,1)
doRemoveItem(item4.uid,1)
doCreateItem(item3id,1,item3pos)
doCreateItem(item4id,1,item4pos)
doCreateItem(item5id,1,itempos)

elseif item.itemid == 1946 then
doPlayerSendTextMessage(cid,22,"A alavanca emperrou.")
doSendMagicEffect(topos,2)
end

return 1
end