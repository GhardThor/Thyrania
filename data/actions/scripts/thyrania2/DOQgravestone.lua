--- Made by Mazen ---

function onUse(cid, item, fromPosition, itemEx, toPosition)
	
        newnPosition  = {x=XXX, y=XXX, z=X} --- Reward Room Position ---

	if item.itemuid == 55100 and getPlayerStorageValue(cid,21545) == 2 then
		doTeleportThing(cid,newnPosition)
		doSendMagicEffect(newnPosition,10)
	else
		return 0
	end
	
	return 1
end
