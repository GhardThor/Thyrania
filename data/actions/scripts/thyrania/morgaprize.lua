----- Coal Basin with Scarab Coin, teleporting by Rike------- 
function onUse(cid, item, frompos, item2, topos) 

monster = "Achad" ------ nome do monstro
pos = {x=880, y=788, z=7}

scarabpos = {x=231,y=171,z=15,stackpos=255} 
scarab = getThingfromPos(scarabpos) 

telepos = {x=236,y=171,z=15,stackpos=1} 

beforepos = getPlayerPosition(cid) 

effect1pos = {x=231,y=171,z=15,stackpos=1} 

if scarab.itemid == 5943 and beforepos.x == 230 and beforepos.y == 171 and beforepos.z == 15 then 
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