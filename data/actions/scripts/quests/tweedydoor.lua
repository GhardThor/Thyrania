--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=738, y=587, z=7}

if item.uid ==1057 then
queststatus = getPlayerStorageValue(cid,5066)
if queststatus == 1 then

doTeleportThing(cid,door)
doSendMagicEffect(topos,12)

else
doPlayerSendTextMessage(cid,22,"Voce precisa completar o desafio da sereia para falar com a Sra. Tweedy.")
end
return 0
end
return 1
end
