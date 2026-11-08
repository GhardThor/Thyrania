function onUse(cid, item, frompos, item2, topos)

monster = "Ghazbaran"
poki = {x=676, y=197, z=11}
ala = {x=767, y=216, z=10}

if item.itemid == 3709 then
doTransformItem(item.uid,3710)
doSummonCreature(monster,poki)
doSendAnimatedText(ala, "FIGHT!", 198)
elseif item.itemid == 3710 then
doPlayerSendTextMessage(cid,22,"Ghazbaran already been mentioned today.")
end

return 1
end