-- [( Teleport talkaction by: Doidin )] --
function onSay(cid, words, param)
doTeleportThing(cid, {x=316, y=131, z=7})
doSendMagicEffect({x=316, y=131, z=7}, 10)
return TRUE
end