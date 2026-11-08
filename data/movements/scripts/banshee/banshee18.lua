function onStepIn(cid, item, position, fromPosition)

lvl = getPlayerLevel(cid)
ppl = getPlayerPosition(cid)

if item.actionid == 2211 and lvl >= 29 then
doSendMagicEffect(ppl, 13)
setPlayerStorageValue(cid,2205,-1)
else
end
end