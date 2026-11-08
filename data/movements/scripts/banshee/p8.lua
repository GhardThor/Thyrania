function onStepIn(cid, item, position, fromPosition)

telepos = {x = 434, y = 239 , z = 3}
lol = getPlayerPosition(cid)
lvl = getPlayerLevel(cid)
lal = getCreatureName(cid)

if item.actionid == 2186 and lal == ghoul then
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2182,1)
doSendMagicEffect(telepos, 6)
else
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2182,1)
doSendMagicEffect(telepos, 6)
end
end