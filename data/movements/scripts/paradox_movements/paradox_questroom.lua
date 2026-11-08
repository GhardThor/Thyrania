function onStepOut(cid, item, position, fromPosition)
	local phoenixegg = {x=432, y=239, z=3, stackpos=1}
	local gold = {x=435, y=239, z=3, stackpos=1}
	local talons = {x=434, y=239, z=3, stackpos=1}
	local wand = {x=436, y=239, z=3, stackpos=1}
	
	if item.actionid == 131 and item.itemid == 426 then --Phoenix Egg
		setPlayerStorageValue(cid, 1011, 1)
		doSendMagicEffect(phoenixegg, CONST_ME_EXPLOSIONHIT)
	elseif item.actionid == 132 and item.itemid == 426 then --10k
		setPlayerStorageValue(cid, 1012, 1)
		doSendMagicEffect(gold, CONST_ME_EXPLOSIONHIT)
	elseif item.actionid == 133 and item.itemid == 426 then --32 Talons
		setPlayerStorageValue(cid, 1013, 1)
		doSendMagicEffect(talons, CONST_ME_EXPLOSIONHIT)
	elseif item.actionid == 134 and item.itemid == 426 then --Wand Of Cosmic
		setPlayerStorageValue(cid, 1014, 1)
		doSendMagicEffect(wand, CONST_ME_EXPLOSIONHIT)
	end
	return 1
end