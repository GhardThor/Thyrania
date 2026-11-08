function onStepIn(cid, item, position, fromPosition)

telepos = {x = 437, y = 239 , z = 3}
lol = getPlayerPosition(cid)
lvl = getPlayerLevel(cid)
lal = getCreatureName(cid)

if item.actionid == 2189 then
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2185,1)
doSendMagicEffect(telepos, 6)
else
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2185,1)
doSendMagicEffect(telepos, 6)
end
end