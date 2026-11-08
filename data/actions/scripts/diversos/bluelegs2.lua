function onUse(cid, item, frompos, item2, topos)

player = {x=149, y=158, z=8} 
if item.uid ==2110 then
queststatus = getPlayerStorageValue(cid,2110)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"You realy fixed the statue.")
 
else
doPlayerSendTextMessage(cid,22,"You fixed the statue.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,2110,1)
doTeleportThing(cid,player)
end
return 0
end
return 1
end