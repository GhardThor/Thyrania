-- morgaroth lever

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2064 and item.itemid == 1945 then
		player1pos = {x=211, y=119, z=14, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=212, y=117, z=14, stackpos=253}
		player2 = getThingfromPos(player2pos)

		player3pos = {x=209, y=117, z=14, stackpos=253}
		player3 = getThingfromPos(player3pos)

                player5pos = {x=209, y=114, z=14, stackpos=253}
		player5 = getThingfromPos(player5pos)

		player4pos = {x=212, y=114, z=14, stackpos=253}
		player4 = getThingfromPos(player4pos)
		dzwignia = os.clock()


		if player1.itemid > 0 and player2.itemid > 0 and player5.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
			queststatus1 = getPlayerStorageValue(player1.uid,2064)
			queststatus2 = getPlayerStorageValue(player2.uid,2064)
			queststatus3 = getPlayerStorageValue(player3.uid,2064)
			queststatus4 = getPlayerStorageValue(player4.uid,2064)
                        queststatus5 = getPlayerStorageValue(player5.uid,2064)

			if queststatus1 == -1 and queststatus2 == -1 and queststatus5 == -1 and queststatus3 == -1 and queststatus4 == -1 then
				nplayer1pos = {x=204, y=107, z=15}
				nplayer2pos = {x=214, y=101, z=15}
				nplayer3pos = {x=208, y=101, z=15}
				nplayer4pos = {x=213, y=99, z=15}
                                nplayer5pos = {x=207, y=99, z=15}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)
                                doSendMagicEffect(player5pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)
                                doTeleportThing(player5.uid,nplayer5pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)
                                doSendMagicEffect(nplayer5pos,10)

				doTransformItem(item.uid,item.itemid+1)
			else
				doPlayerSendCancel(cid,"Alguem no seu time jah fez a quest.")
			end
		else
			doPlayerSendCancel(cid,"Voce precisa de 5 pessoas para a quest.")
		end

	elseif item.uid ==2064 and item.itemid == 1946 then
		if (dzwignia - os.clock()) > 30 then
		doTransformItem(item.uid,item.itemid-1)
		end
		if getPlayerAccess(cid) > 0 then
			doTransformItem(item.uid,item.itemid-1)
			end
		end
	return 1
end
