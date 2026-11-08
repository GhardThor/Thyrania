function onUse(cid, item, frompos, item2, topos)

alavancapos = { x=384, y=771, z=10, stackpos=1 }
telepos = { x=384, y=771, z=10, stackpos=1 }
 
if item.uid ==2092 then
queststatus = getPlayerStorageValue(cid,2093)
if queststatus == 0 then
doSendMagicEffect(itempos,15)
doPlayerSendTextMessage(cid,22,"You did not finish any mission yet. Missing 7.")
elseif queststatus == 1 then
doPlayerSendTextMessage(cid,22,"You've finished a mission. Missing 6.")
doSendMagicEffect(itempos,15)
elseif queststatus == 2 then
doPlayerSendTextMessage(cid,22,"You have completed 2 missions. Missing 5.")
doSendMagicEffect(itempos,15)
elseif queststatus == 3 then
doPlayerSendTextMessage(cid,22,"You have completed 3 missions. Missing 4.")
doSendMagicEffect(itempos,15) 
elseif queststatus == 4 then
doPlayerSendTextMessage(cid,22,"You have completed 4 missions. Missing 3.")
doSendMagicEffect(itempos,15) 
elseif queststatus == 5 then
doPlayerSendTextMessage(cid,22,"You have completed 5 missions. Missing 2.")
doSendMagicEffect(itempos,15) 
elseif queststatus == 6 then
doPlayerSendTextMessage(cid,22,"You have completed 6 missions. Missing 1.")
doSendMagicEffect(itempos,15) 
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