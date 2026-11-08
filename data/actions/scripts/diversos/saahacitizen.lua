function onUse(cid, item, frompos, item2, topos)

newtemple = {x=101, y=395, z=8}  

if item.uid == 2003 then
    
    doPlayerSetTown(cid,4)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    doPlayerSendTextMessage(cid,22,"Seu Templo agora é em Saaha.")
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Saaha.")
  
end

return 1

end
