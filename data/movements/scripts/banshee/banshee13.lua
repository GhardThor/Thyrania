function onStepIn(cid, item, position, fromPosition)

lvl = getPlayerLevel(cid)
ppl = getPlayerPosition(cid)

if item.actionid == 2206 and lvl >= 29 then
doSendMagicEffect(ppl, 14)
setPlayerStorageValue(cid,2206,1)
else
end
end