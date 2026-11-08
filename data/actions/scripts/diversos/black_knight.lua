function onUse(cid, item, frompos, item2, topos)
janelapos = {x=557, y=480, z=11, stackpos=1}
itemid = 2711 
local get = getThingfromPos(janelapos)
if get.itemid == itemid then
doRemoveItem(get.uid,1)
elseif(get.itemid == 0)then 
doCreateItem(itemid,1,janelapos)
else
return TRUE,doPlayerSendTextMessage(cid,22,'Sorry, not possible.')
end
end