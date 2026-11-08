--
function onUse(cid, item, frompos, item2, topos)

telepos = {x=156,y=464,z=7,stackpos=1} 
 
if item.uid ==2076 then
queststatus = getPlayerStorageValue(cid,2076)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já retirou seus 100k.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou 100k.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2160,10)
setPlayerStorageValue(cid,2076,1)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end
