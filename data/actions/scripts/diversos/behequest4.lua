function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2045 then
queststatus = getPlayerStorageValue(cid,2045)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"You already released their quest.")
 
else
doPlayerSendTextMessage(cid,22,"You released the Roc Feather Quest.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,2045,1)
end
return 0
end
return 1
end
