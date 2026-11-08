function onUse(cid, item, frompos, item2, topos)

newtemple = {x=380, y=773, z=10}  

if item.uid == 2113 then
    
    doTeleportThing(cid,newtemple)
    doSendMagicEffect(newtemple,10)
    
else
    doPlayerSendCancel(cid,"Wrong command.")
  
end

return 1

end