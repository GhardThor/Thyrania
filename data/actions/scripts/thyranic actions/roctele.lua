function onUse(cid, item, frompos, item2, topos)
telepos = {x=639,y=241,z=6,stackpos=1} 
if item.uid ==2072 then
queststatus = getPlayerStorageValue(cid,2072)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"You found a Roc Feather.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2366,1)
setPlayerStorageValue(cid,2072,1)
else
doPlayerSendTextMessage(cid,22,"When you finish the mission open this chest again.")
doSendMagicEffect(topos,12)
doTeleportThing(cid,telepos)
end
return 0
end
return 1
end