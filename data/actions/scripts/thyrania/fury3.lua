----- Coal Basin with Scarab Coin, teleporting by Rike------- 
function onUse(cid, item, frompos, item2, topos) 

monster = "Mago Phyro" ------ nome do monstro
pos = {x=722, y=1082, z=8}
monster2 = "Mago Poxani" ------ nome do monstro
pos2 = {x=721, y=1075, z=8}

scarabpos = {x=728,y=1084,z=8,stackpos=255} 
scarab = getThingfromPos(scarabpos) 

telepos = {x=726,y=1083,z=8,stackpos=1} 
telepos2 = {x=878,y=812,z=7,stackpos=1}

beforepos = getPlayerPosition(cid) 

effect1pos = {x=728,y=1084,z=8,stackpos=1} 

if scarab.itemid == 6106 and beforepos.x == 728 and beforepos.y == 1083 and beforepos.z == 8 then 
doTeleportThing(cid,telepos) 
doSendMagicEffect(effect1pos,12) 
doSendMagicEffect(telepos,10)
doSummonCreature(monster,pos)
doSummonCreature(monster2,pos2) 
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