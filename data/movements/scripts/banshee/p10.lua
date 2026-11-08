function onStepIn(cid, item, position, fromPosition)

telepos = {x = 436, y = 239 , z = 3}
lol = getPlayerPosition(cid)
lvl = getPlayerLevel(cid)
lal = getCreatureName(cid)

if item.actionid == 2188 and lal == ghoul then
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2184,1)
doSendMagicEffect(telepos, 6)
else
doSendMagicEffect(lol, 13)
setPlayerStorageValue(cid,2184,1)
doSendMagicEffect(telepos, 6)
end
end