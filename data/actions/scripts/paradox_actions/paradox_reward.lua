function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9901 then
		queststatus = getPlayerStorageValue(cid, 9901)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a 32 Talons.")
			doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
			doPlayerAddItem(cid, 2151, 32)
			setPlayerStorageValue(cid, 9901, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty!")
		end
	elseif item.uid == 9902 then
		queststatus = getPlayerStorageValue(cid, 1012)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a 100 Platinum Coins.")
                   doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
			axe_uid = doPlayerAddItem(cid, 2152, 100)
			setPlayerStorageValue(cid,1012,1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty!")
		end
	elseif item.uid == 9903 then
		queststatus = getPlayerStorageValue(cid, 1014)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Wand of Cosmic Energy.")
			doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
			doPlayerAddItem(cid, 2189, 1)
			setPlayerStorageValue(cid,1014,1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty!")
		end
	elseif item.uid == 9904 then
		queststatus = getPlayerStorageValue(cid, 1011)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22, "You have found a Phoenix Egg.")
			doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
			doPlayerAddItem(cid, 2328, 1)
			setPlayerStorageValue(cid, 1011, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty!")
		end
	end
	return true
end
