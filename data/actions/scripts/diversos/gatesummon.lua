function onUse(cid, item, frompos, item2, topos)

itempos = {x=234, y=390, z=6, stackpos=1}
itemid = 1547
item3 = getThingfromPos(itempos)
item2pos = {x=239, y=393, z=6, stackpos=1}
item2id = 1546
item4 = getThingfromPos(item2pos)
demon1pos = {x=233, y=389, z=6}
demon2pos = {x=236, y=388, z=6}
demon3pos = {x=243, y=393, z=6}

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doSummonCreature("Vampire", demon1pos)
doSummonCreature("Vampire", demon2pos)
doSummonCreature("Demon Skeleton", demon3pos)
elseif item.itemid == 1946 then
doPlayerSendTextMessage(cid,22,"A alavanca emperrou.")

end

return 1
end