--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=621,y=241,z=7,stackpos=1} 
 
if item.uid == 2073 then
queststatus = getPlayerStorageValue(cid,2072)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já recebeu seu prêmio.")
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"Você encontrou um Shockwave Amulet.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,10221,1)
setPlayerStorageValue(cid,2072,1)
 
else
doPlayerSendTextMessage(cid,22,"Abra o baú.")
doSendMagicEffect(topos,12)
doTeleportThing(cid,telepos)
setPlayerStorageValue(cid,2072,2)
end
return 0
end
return 1
end
