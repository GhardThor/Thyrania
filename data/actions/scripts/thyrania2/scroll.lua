--Teleport Scroll By Delton --
function onUse(cid, item, frompos, item2, topos)

telepos = {x=71, y=34, z=8} 
 
if item.uid ==8977 then
doTeleportThing(cid,telepos)
doPlayerRemoveMoney(cid, 1000)
 
else
doSendAnimatedText(telepos, "Welcome!", TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(topos,10)
doTeleportThing(cid,telepos)
doSendAnimatedText(telepos, "Welcome!", TEXTCOLOR_LIGHTGREEN)
doPlayerRemoveMoney(cid, 100)
end
return 0
end
