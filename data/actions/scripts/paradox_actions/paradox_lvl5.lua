local function onTime()
	doRemoveItem(getThingfromPos({x=32479, y=31904, z=3, stackpos=1}).uid, 1)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local food1 = {x=32478, y=31903, z=3, stackpos=255}
	local food2 = {x=32479, y=31903, z=3, stackpos=255}

	local getfood1 = getThingfromPos(food1)
	local getfood2 = getThingfromPos(food2)

	local ladderpos = {x=32479, y=31904, z=3, stackpos=255}
	local getladder = getThingfromPos(ladderpos)

	if (item.itemid == 1945 and getfood1.itemid == 2628 and getfood2.itemid == 2634 then
		addEvent(onTime,15*60*1000)
		doCreateItem(1386,1,ladderpos)

		doRemoveItem(getfood1.uid,1)
		doRemoveItem(getfood2.uid,1)

		doSendMagicEffect(food1, 36)
		doSendMagicEffect(food2, 36)

		doTransformItem(item.uid, item.itemid + 1)
	elseif (item.itemid == 1946) then
		doTransformItem(item.uid, item.itemid - 1)
	end
	return true
end