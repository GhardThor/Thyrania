----- Coal Basin with Scarab Coin, teleporting by Rike------- 
function onUse(cid, item, frompos, item2, topos) 

scarabpos = {x=151,y=458,z=6,stackpos=255} 
scarab = getThingfromPos(scarabpos) 

telepos = {x=170,y=618,z=7,stackpos=1} 

beforepos = getPlayerPosition(cid) 

effect1pos = {x=151,y=458,z=6,stackpos=1} 

if scarab.itemid == 5809 and beforepos.x == 151 and beforepos.y == 459 and beforepos.z == 6 then 
doTeleportThing(cid,telepos) 
doSendMagicEffect(effect1pos,12) 
doSendMagicEffect(telepos,10) 
doSendMagicEffect(scarabpos,2) 
doRemoveItem(scarab.uid,1) 

else 

doPlayerSendCancel(cid,"Stay on top of the fire.") 

end 
if item.itemid == 1485 then 
doPlayerSendCancel(cid,"Put the object for sacrifice.") 

end 
return 1 
end