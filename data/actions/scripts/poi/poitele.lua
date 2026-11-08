--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=345,y=770,z=7,stackpos=1} 
 
if item.uid ==2091 then
queststatus = getPlayerStorageValue(cid,2091)
if queststatus == 0 then
doPlayerSendTextMessage(cid,22,"It is empty.")
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"You found a Roc Feather.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,2091,1)
 
else
doPlayerSendTextMessage(cid,22,"PITS OF INFERNO!")
doSendMagicEffect(topos,12)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end
