function onUse(cid, item, fromPosition, itemEx, toPosition)
	local switch1pos = {x=433, y=240, z=6, stackpos=1}
	local switch2pos = {x=433, y=240, z=6, stackpos=1}
	local switch3pos = {x=433, y=240, z=6, stackpos=1}
	local switch4pos = {x=433, y=240, z=6, stackpos=1}
	local switch5pos = {x=433, y=240, z=6, stackpos=1}
	local switch6pos = {x=433, y=240, z=6, stackpos=1}
	local ladderpos = {x=435, y=243, z=6, stackpos=1}

	local getswitch1 = getThingfromPos(switch1pos)
	local getswitch2 = getThingfromPos(switch2pos)
	local getswitch3 = getThingfromPos(switch3pos)
	local getswitch4 = getThingfromPos(switch4pos)
	local getswitch5 = getThingfromPos(switch5pos)
	local getswitch6 = getThingfromPos(switch6pos)
	local ladder = getThingfromPos(ladderpos)

	if (item.itemid == 1945 and getswitch1.itemid == 1946 and getswitch2.itemid == 1946 and getswitch3.itemid == 1945 and getswitch4.itemid == 1945 and getswitch5.itemid == 1946 and getswitch6.itemid == 1945) then
		doCreateItem(1386, 1, ladderpos)
		doTransformItem(item.uid, item.itemid + 1)
	elseif (item.itemid == 1946) then
		doRemoveItem(getThingfromPos({x=435, y=243, z=6, stackpos=1}).uid, 1)
		doTransformItem(item.uid, item.itemid - 1)
	end
	return true
end