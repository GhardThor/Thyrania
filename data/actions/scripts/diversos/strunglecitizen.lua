function onUse(cid, item, frompos, item2, topos)

newtemple = {x=171, y=194, z=7}  

if item.uid == 2002 then
    
    doPlayerSetMasterPos(cid,newtemple)
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    
else
    doPlayerSendCancel(cid,"You are not allowed to live on Thyrania.")
  
end

return 1

end
