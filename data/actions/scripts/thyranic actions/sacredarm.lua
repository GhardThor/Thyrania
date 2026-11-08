--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=699,y=374,z=6,stackpos=1} 
 
if item.uid ==2081 then
queststatus = getPlayerStorageValue(cid,2081)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já retirou sua sacred armor.")
doTeleportThing(cid,telepos)
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Sacred Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2508,1)
setPlayerStorageValue(cid,2081,1)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end
