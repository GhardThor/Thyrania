function onSay(cid, words, param)
if getPlayerPremiumDays(cid) <= 360 then
if doPlayerRemoveMoney(cid, 10000) == TRUE then
doPlayerAddPremiumDays(cid, 10)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have bought 10 days of premium account.")
else
doPlayerSendCancel(cid, "You don't have enough money, 10 days premium account costs 10.000 gold coins.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You can not buy more than one year of Premium Account.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
return TRUE
end