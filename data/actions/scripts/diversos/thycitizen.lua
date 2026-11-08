function onUse(cid, item, frompos, item2, topos)

newtemple = {x=71, y=34, z=8}  

if item.uid == 2002 then
    
    doPlayerSetTown(cid,2)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Thyrania.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Thyrania.")
  
end

return 1

end
