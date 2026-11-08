--
function onUse(cid, item, frompos, item2, topos)

player = {x=604, y=235, z=8} 
if item.uid ==2152 then
queststatus = getPlayerStorageValue(cid,2110252352)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"You can not go into Formorgar.")
 
else
doPlayerSendTextMessage(cid,22,"Welcome a Formorgar Mines.")
doSendMagicEffect(topos,12)
doTeleportThing(cid,player)
end
return 0
end
return 1
end