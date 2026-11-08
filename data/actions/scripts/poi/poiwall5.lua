function onUse(cid, item, frompos, item2, topos)

monster = "Diabolic Imp" ------ nome do monstro
pos = {x=359, y=768, z=7} ---posicao em que o monstro ira aparecer
monster2 = "Diabolic Imp" ------ nome do monstro
pos2 = {x=359, y=771, z=7} ---posicao em que o monstro ira aparecer

itempos = {x=356, y=770, z=7, stackpos=1}
itemid = 3401
item4 = getThingfromPos(itempos)
item2pos = {x=357, y=768, z=7, stackpos=1}
item2id = 3698
item2 = getThingfromPos(item2pos)
item3pos = {x=357, y=772, z=7, stackpos=1}
item3id = 3698
item3 = getThingfromPos(item3pos)
alavancapos = { x=355, y=771, z=7, stackpos=1 }

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item4.uid,1)
doRemoveItem(item2.uid,1)
doRemoveItem(item3.uid,1)
doCreateItem(item3id,1,item3pos)
doCreateItem(item2id,1,item2pos)
doSendAnimatedText(alavancapos, "Next Mission!", 198)
doSendMagicEffect(itempos,15)
elseif item.itemid == 1946 then
doSendAnimatedText(itempos, "Go to next!", 198)
end

return 1
end