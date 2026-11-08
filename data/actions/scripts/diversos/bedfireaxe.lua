function onUse(cid, item, frompos, item2, topos)

itempos = {x=200, y=85, z=12, stackpos=1}
itemid = 430
item3 = getThingfromPos(itempos)
item2pos = {x=201, y=85, z=12, stackpos=1}
item2id = 1761
item4 = getThingfromPos(item2pos)
item3pos = {x=200, y=84, z=12, stackpos=1}
item3id = 1755
item5 = getThingfromPos(item3pos)
item4pos = {x=201, y=84, z=12, stackpos=1}
item4id = 1754
item6 = getThingfromPos(item4pos)

if item.itemid == 388 then
doPlayerSendTextMessage(cid,22,"You opened a secret passage.")
doTransformItem(item.uid,389)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
doCreateItem(item3id,1,item2pos)
doCreateItem(item4id,1,item4pos)

elseif item.itemid == 389 then
queststatus = getPlayerStorageValue(cid,1058)
if queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You found a Magic Sulphur, best save, perhaps you need it.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,6547,1)
setPlayerStorageValue(cid,1058,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end

return 1
end