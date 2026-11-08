function onUse(cid, item, frompos, item2, topos)
telepos = {x=603,y=297,z=7,stackpos=1} 
if item.uid ==2075 then
queststatus = getPlayerStorageValue(cid,2075)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty!")
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"You found a Roc Feather.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7380,1)
setPlayerStorageValue(cid,2075,1)
else
doPlayerSendTextMessage(cid,22,"WELCOME TO ORSHABAAL'S MINION!")
doSendMagicEffect(topos,12)
doTeleportThing(cid,telepos)
end
return FALSE
end
return TRUE
end
