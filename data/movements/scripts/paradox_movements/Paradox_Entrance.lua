function onStepIn(cid, item, position, fromPosition)
	local skull1 = {x=472, y=266, z=2, stackpos=255}
	local skull2 = {x=474, y=266, z=2, stackpos=255}
	local skull3 = {x=476, y=266, z=2, stackpos=255}
	local entrance = {x=436, y=259, z=7, stackpos=255}

	local getskull1 = getThingfromPos(skull1)
	local getskull2 = getThingfromPos(skull2)
	local getskull3 = getThingfromPos(skull3)

	if (getskull1.itemid == 2229 and getskull2.itemid == 2229 and getskull3.itemid == 2229) then
		doRemoveItem(getskull1.uid, 1)
		doRemoveItem(getskull2.uid, 1)
		doRemoveItem(getskull3.uid, 1)

		doCreateItem(1496, 1, skull1)
		doCreateItem(1496, 1, skull2)
		doCreateItem(1496, 1, skull3)

		doSendMagicEffect(skull1, 8)
		doSendMagicEffect(skull2, 8)
		doSendMagicEffect(skull3, 8)

		doTeleportThing(cid, entrance)
	end
	return TRUE
end