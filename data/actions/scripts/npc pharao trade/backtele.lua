--
function onUse(cid, item, frompos, item2, topos)

player = {x=601, y=242, z=7}  
if item.uid ==2153 then
queststatus = getPlayerStorageValue(cid,2230)
if queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You can not go back to Chaos Okolnir.")
 
else
doPlayerSendTextMessage(cid,22,"Welcome back to the Underworld.")
doSendMagicEffect(topos,12)
doTeleportThing(cid,player)
end
return 0
end
return 1
end