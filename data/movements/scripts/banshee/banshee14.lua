function onStepIn(cid, item, position, fromPosition)

lvl = getPlayerLevel(cid)
ppl = getPlayerPosition(cid)

if item.actionid == 2207 and lvl >= 29 then
doSendMagicEffect(ppl, 13)
setPlayerStorageValue(cid,2201,-1)
else
end
end