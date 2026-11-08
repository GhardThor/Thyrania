  -- paradox by Delton -- 
  local config =
{
    newPos = {x=435, y=242, z=6}, -- nova posição
    teleportPos = {x=437, y=241, z=7}, -- pos do TP
    LeverPos = {x=438, y=245, z=7}, -- Lever pos
    timeToRemove = 120 -- tempo to remove
}

function onUse(cid, item, frompos, item2, topos)
local teleport = getTileItemById(config.teleportPos, 1387)
local playerPos = getCreaturePosition(cid)
    if item.itemid == 1945 then
        doCreateTeleport(1387, config.newPos, config.teleportPos)
        doSendMagicEffect(config.teleportPos, CONST_ME_TELEPORT)
        doSendMagicEffect(playerPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, "Voce tem 2 minutos para entrar no TP!", TALKTYPE_ORANGE_1)
        addEvent(doRemoveTeleport, config.timeToRemove * 1000) 
    elseif item.itemid == 1946 then
        doCreateTeleport(1387, config.newPos, config.teleportPos)
        doSendMagicEffect(config.teleportPos, CONST_ME_TELEPORT)
        doSendMagicEffect(playerPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, "Voce tem 2 minutos para entrar no TP!", TALKTYPE_ORANGE_1)
        addEvent(doRemoveTeleport, config.timeToRemove * 1000) 
    return 1
    end
end

function doRemoveTeleport()
local teleport = getTileItemById(config.teleportPos, 1387)
local Lever = getTileItemById(config.LeverPos, 1946)
    if teleport.uid > 0 then
        doRemoveItem(teleport.uid)
        doSendMagicEffect(config.teleportPos, CONST_ME_POFF)
        doTransformItem(Lever.uid, 1945)
    end
end