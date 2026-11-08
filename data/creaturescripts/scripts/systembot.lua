function onCombat(cid, target)

if getPlayerStorageValue(cid, 63216) == 1 then
doPlayerSendTextMessage(cid, 22, "Voce tem que falar !bot "..getPlayerStorageValue(cid, 63217).." para poder atakar.")
return FALSE
end 
return TRUE
end    