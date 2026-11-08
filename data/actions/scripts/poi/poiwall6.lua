function onUse(cid, item, frompos, item2, topos)

itempos = {x=363, y=770, z=7, stackpos=1}
itemid = 3401
item3 = getThingfromPos(itempos)
item2pos = {x=353, y=769, z=7, stackpos=1}
item2id = 3698
item2 = getThingfromPos(item2pos)
alavancapos = { x=359, y=771, z=7, stackpos=1 }

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doSendAnimatedText(alavancapos, "START POI!", 198)
doSendMagicEffect(itempos,15)
elseif item.itemid == 1946 then
doSendAnimatedText(itempos, "Go POI!", 198)
end

return 1
end