function onUse(cid, item, frompos, item2, topos)
player = {x=149, y=160, z=7} 
 
if item.uid ==2112 then
queststatus = getPlayerStorageValue(cid,2112)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"It is empty.")
else
doPlayerSendTextMessage(cid,22,"You have found the Blue legs and many gold.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,7730,1)
coins_uid = doPlayerAddItem(cid,2152,50)
setPlayerStorageValue(cid,2112,1)
doTeleportThing(cid,player)
end
return FALSE
end
return TRUE
end