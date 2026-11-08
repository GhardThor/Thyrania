function onStepIn(cid, item, position, fromPosition)

lvl = getPlayerLevel(cid)
ppl = getPlayerPosition(cid)

if item.actionid == 2210 and lvl >= 29 then
doSendMagicEffect(ppl, 13)
setPlayerStorageValue(cid,2204,-1)
else
end
end