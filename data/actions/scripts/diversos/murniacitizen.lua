function onUse(cid, item, frompos, item2, topos)

newtemple = {x=844, y=561, z=7}  

if item.uid == 2004 then
    
    doPlayerSetTown(cid,3)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Murnia.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Murnia.")
  
end

return 1

end
