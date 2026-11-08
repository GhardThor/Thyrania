local config = {
	message = "Pise no corpo em 30 seconds, else it will disappear.",
	timeToRemove = 30, -- seconds
	teleportId = 1387,
	bosses = {
		["Ushuriel"] = { x = 2034, y = 1511, z = 5 },
		["Annihilion"] = { x = 2102, y = 1671, z = 5 },
		["Hellgorak"] = { x = 819, y = 983, z = 6 },
		["Madareth"] = { x = 1903, y = 1578, z = 6 },
		["Zugurosh"] = { x = 1985, y = 1524, z = 5 },
		["Demon Oak Bossy"] = { x = 709, y = 831, z = 8 },
		["Necropharus"] = { x = 646, y = 809, z = 9 },
		["Minishabaal"] = { x = 667, y = 733, z = 7 },
		["Foreman Kneebiter"] = { x = 435, y = 244, z = 5 },
		["Rook Chaos"] = { x = 722, y = 1080, z = 8 },
		["Latrivan"] = { x = 2004, y = 1628, z = 5 }
	}
}
	
local function removal(position)
	position.stackpos = 1
	if getThingfromPos(position).itemid == config.teleportId then
		doRemoveItem(getThingfromPos(position).uid)
	end
	return TRUE
end

function onDeath(cid, corpse, killer)
	registerCreatureEvent(cid, "inquisitionPortals")
	local position = getCreaturePosition(cid)
	
	for name, pos in pairs(config.bosses) do
		if name == getCreatureName(cid) then
			teleport = doCreateTeleport(config.teleportId, pos, position)
			doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
			addEvent(removal, config.timeToRemove * 1000, position)
			doSendMagicEffect(position,65)
		end
	end
	return TRUE
end
