function onUse(cid, item, frompos, item2, topos)

alavancapos = { x=384, y=771, z=10, stackpos=1 }
telepos = { x=384, y=771, z=10, stackpos=1 }
 
if item.uid ==2097 then
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
elseif queststatus == 2 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,3)
elseif queststatus == 3 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,4) 
elseif queststatus == 4 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,5) 
elseif queststatus == 5 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,6) 
elseif queststatus == 6 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doSendAnimatedText(alavancapos, "DONE!", 198)
setPlayerStorageValue(cid,2093,7) 
elseif queststatus == 7 then
doSendMagicEffect(itempos,15)
doTeleportThing(cid,telepos)
doPlayerSendTextMessage(cid,22,"Have you finished the quest, go to the final room to get your prize.") 

else
doPlayerSendTextMessage(cid,22,"Wow, bug?!")
end
return 0
end
return 1
end
