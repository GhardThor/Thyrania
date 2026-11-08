function onStepIn(cid, item, position, fromPosition)
	if getThingfromPos({x=437, y=241, z=7, stackpos=1}).itemid == 2782 then
		doTransformItem(getThingfromPos({x=437, y=241, z=7, stackpos=1}).uid, 1385)
	end
	return true
end