----- Coal Basin with Scarab Coin, teleporting by Rike------- 
function onUse(cid, item, frompos, item2, topos) 

monster = "Kreebosh The Exile" ------ nome do monstro
pos = {x=870, y=776, z=7}

scarabpos = {x=878,y=776,z=7,stackpos=255} 
scarab = getThingfromPos(scarabpos) 

telepos = {x=872,y=776,z=7,stackpos=1} 
telepos2 = {x=878,y=812,z=7,stackpos=1}

beforepos = getPlayerPosition(cid) 

effect1pos = {x=878,y=776,z=7,stackpos=1} 

if scarab.itemid == 2626 and beforepos.x == 879 and beforepos.y == 776 and beforepos.z == 7 then 
doTeleportThing(cid,telepos) 
doSendMagicEffect(effect1pos,12) 
doSendMagicEffect(telepos,10)
doSummonCreature(monster,pos) 
doSendMagicEffect(scarabpos,2) 
doRemoveItem(scarab.uid,1) 

else 

doPlayerSendCancel(cid,"Fique em cima do fogo.") 

end 
if item.itemid == 1485 then 
doPlayerSendCancel(cid,"Ponha o objeto para sacrifício.") 

end 
return 1 
end