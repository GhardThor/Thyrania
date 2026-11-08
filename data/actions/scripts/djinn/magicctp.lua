--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=323,y=382,z=7,stackpos=1} 
 
if item.uid ==2246 then
queststatus = getPlayerStorageValue(cid,2244)
if queststatus == 1 then
doTeleportThing(cid,telepos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,"You need the Green Djinn Quest to enter this room.")
doSendMagicEffect(topos,12)
end
return 0
end
return 1
end
