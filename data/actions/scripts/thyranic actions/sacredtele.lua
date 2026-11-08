function onUse(cid, item, frompos, item2, topos)
telepos = {x=653,y=282,z=7,stackpos=1} 
if item.uid ==2083 then
queststatus = getPlayerStorageValue(cid,2083)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"You found a Roc Feather.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7380,1)
setPlayerStorageValue(cid,2075,1)
else
doPlayerSendTextMessage(cid,22,"A sacrifice for something sacred?!")
doSendMagicEffect(topos,12)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end