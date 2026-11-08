function onUse(cid, item, frompos, item2, topos)

newtemple = {x=599, y=880, z=6}  

if item.uid == 8001 then
    
    doPlayerSetTown(cid,7)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Talas.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Thyranihar.")
  
end

return 1

end
