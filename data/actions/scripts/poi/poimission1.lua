function onUse(cid, item, frompos, item2, topos)
end
function onStepIn(cid, item)

alavancapos = { x=384, y=771, z=10, stackpos=1 }
telepos = { x=384, y=771, z=10, stackpos=1 }
 
if item.uid ==2095 then
queststatus = getPlayerStorageValue(cid,2093)

if queststatus == 0 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,1)

elseif queststatus == 1 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,2)

else
doPlayerSendTextMessage(cid,22,"Wow, bug!?")
end
return 0
end
return 1
end