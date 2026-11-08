function onUse(cid, item, fromPosition, itemEx, toPosition)
	local cratePos = {x=438, y=240, z=5, stackpos=1}

	if (item.itemid == 1946) then
		doSummonCreature("Dragon", cratePos)
		setPlayerStorageValue(cid,127,1)
	else
	queststatus = getPlayerStorageValue(cid,127)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Sorry not is possible.")
end
return 0
end
return 1
end