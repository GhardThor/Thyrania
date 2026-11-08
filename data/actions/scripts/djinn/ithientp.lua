function onUse(cid, item, frompos, item2, topos)
telepos = {x=291,y=351,z=8,stackpos=1} 
if item.uid == 2244 then
queststatus = getPlayerStorageValue(cid,2243)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
doTeleportThing(cid,telepos)
else
doPlayerSendTextMessage(cid,22,"Now you can talk with Bo'Ques.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid, 62136, 1)
setPlayerStorageValue(cid, 2243,1)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end