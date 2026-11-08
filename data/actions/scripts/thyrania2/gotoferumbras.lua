--
function onUse(cid, item, frompos, item2, topos)

player = {x=141, y=550, z=7} 
if item.uid ==8015 then
queststatus = getPlayerStorageValue(cid,2110252352)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você não pode entrar no Refúgio dos Magos.")
 
else
doPlayerSendTextMessage(cid,22,"Bem vindo ao refúgio dos magos!.")
doSendMagicEffect(topos,12)
doTeleportThing(cid,player)
end
return 0
end
return 1
end