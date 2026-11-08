  -- paradox by Delton -- 
  local config =
{
    newPos = {x=435, y=242, z=6}, -- nova posição
    teleportPos = {x=437, y=241, z=7}, -- pos do TP
    LeverPos = {x=438, y=245, z=7}, -- Lever pos
    timeToRemove = 20 -- tempo to remove
}

function onUse(cid, item, frompos, item2, topos)
local teleport = getTileItemById(config.teleportPos, 1387)
local playerPos = getCreaturePosition(cid)
    if item.itemid == 1718 then
        doSendMagicEffect(config.teleportPos, CONST_ME_TELEPORT)
        doSendMagicEffect(playerPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, "The monster has been created!", TALKTYPE_ORANGE_1)
		doSummonCreature("Foreman Kneebiter", config.newPos)
        addEvent(doRemoveTeleport, config.timeToRemove * 1000)
    elseif item.itemid == 1718 then
        doPlayerSendCancel(cid, "The monster has already been created.")
    return 1
    end
end

function doRemoveTeleport()
local teleport = getTileItemById(config.teleportPos, 1387)
local Lever = getTileItemById(config.LeverPos, 1718)
    if teleport.uid > 0 then
        doRemoveItem(teleport.uid)
        doSendMagicEffect(config.teleportPos, CONST_ME_POFF)
        doTransformItem(Lever.uid, 1718)
    end
end 