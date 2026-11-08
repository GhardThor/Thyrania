function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then
if (item.actionid == 4035) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Thyran.")
doPlayerSetTown(cid,2)
elseif (item.actionid == 4036) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Murnia.")
doPlayerSetTown(cid,3)
elseif (item.actionid == 4037) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Saaha.")
doPlayerSetTown(cid,4)
elseif (item.actionid == 4038) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Icya.")
doPlayerSetTown(cid,5)
elseif (item.actionid == 4039) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Venga.")
doPlayerSetTown(cid,6)
elseif (item.actionid == 4040) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Talas.")
doPlayerSetTown(cid,7)
elseif (item.actionid == 4041) then
doPlayerSendTextMessage(cid,24,"Now you are citizen of Mandrin.")
doPlayerSetTown(cid,8)
end
end
end