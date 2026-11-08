function onStepIn(cid, item, position, fromPosition)

lvl = getPlayerLevel(cid)
ppl = getPlayerPosition(cid)

if item.actionid == 2203 and lvl >= 29 then
doSendMagicEffect(ppl, 14)
setPlayerStorageValue(cid,2203,1)
else
end
end