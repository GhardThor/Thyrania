--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=156,y=464,z=7,stackpos=1} 
 
if item.uid ==2063 then
queststatus = getPlayerStorageValue(cid,2063)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já retirou sua golden boots.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Golden Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2646,1)
setPlayerStorageValue(cid,2063,1)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end
