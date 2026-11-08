function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (getPlayerStorageValue(cid, 10004) == -1) then
		doPlayerSendTextMessage(cid,22,"You have found a key.")
		key = doPlayerAddItem(cid, 2089, 1)
		doSetItemActionId(key,3899)
		setPlayerStorageValue(cid, 10004,1)
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
	return true
end