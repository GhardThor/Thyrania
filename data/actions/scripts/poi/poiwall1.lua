function onUse(cid, item, frompos, item2, topos)

itempos = {x=348, y=770, z=7, stackpos=1}
itemid = 6289
item3 = getThingfromPos(itempos)
item2pos = {x=349, y=769, z=7, stackpos=1}
item2id = 3698
item2 = getThingfromPos(item2pos)
alavancapos = { x=344, y=768, z=7, stackpos=1 }

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doRemoveItem(item2.uid,1)
doCreateItem(item2id,1,item2pos)
doSendMagicEffect(itempos,15)
doSendAnimatedText(alavancapos, "Missing 4!", 198)
elseif item.itemid == 1946 then
doSendAnimatedText(alavancapos, "Go to next!", 198)
doSendMagicEffect(itempos,15)
end

return 1
end