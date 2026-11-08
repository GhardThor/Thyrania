function onUse(cid, item, frompos, item2, topos)

newtemple = {x=2309, y=1530, z=7}  

if item.uid == 8001 then
    
    doPlayerSetTown(cid,7)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Thyranihar.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Thyranihar.")
  
end

return 1

end
