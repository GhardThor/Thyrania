--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==1061 then
queststatus = getPlayerStorageValue(cid,1061)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Você encontrou uma Obsidian Knife.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5908,1)
setPlayerStorageValue(cid,1061,1)
end
return 0
end
return 1
end
