function onUse(cid, item, frompos, item2, topos)

itempos = {x=350, y=770, z=7, stackpos=1}
itemid = 3401
item3 = getThingfromPos(itempos)
item2pos = {x=351, y=769, z=7, stackpos=1}
item2id = 3698
item2 = getThingfromPos(item2pos)
alavancapos = { x=345, y=789, z=8, stackpos=1 }

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doRemoveItem(item2.uid,1)
doCreateItem(item2id,1,item2pos)
doSendAnimatedText(alavancapos, "Missing 3!", 198)
doSendMagicEffect(itempos,15)
elseif item.itemid == 1946 then
doSendAnimatedText(itempos, "Go to next!", 198)
end

return 1
end