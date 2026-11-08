function onUse(cid, item, frompos, item2, topos)

newtemple = {x=402, y=434, z=7}  

if item.uid == 2005 then
    
    doPlayerSetTown(cid,6)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Venga.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Venga.")
  
end

return 1

end
