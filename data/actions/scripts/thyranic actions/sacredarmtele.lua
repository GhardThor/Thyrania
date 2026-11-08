-- annihilator lever

function onUse(cid, item, frompos, item2, topos)


monster = "Orshabaal" ------ nome do monstro
pos = {x=703, y=374, z=7} ---posicao em que o monstro ira aparecer
monster2 = "Orshabaal" ------ nome do monstro
pos2 = {x=702, y=374, z=7} ---posicao em que o monstro ira aparecer

   	if item.uid == 2082 and item.itemid == 1945 then
		player1pos = {x=657, y=282, z=7, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=656, y=282, z=7, stackpos=253}
		player2 = getThingfromPos(player2pos)

		player3pos = {x=655, y=282, z=7, stackpos=253}
		player3 = getThingfromPos(player3pos)

		player4pos = {x=654, y=282, z=7, stackpos=253}
		player4 = getThingfromPos(player4pos)
		dzwignia = os.clock()


		if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
			queststatus1 = getPlayerStorageValue(player1.uid,2082)
			queststatus2 = getPlayerStorageValue(player2.uid,2082)
			queststatus3 = getPlayerStorageValue(player3.uid,2082)
			queststatus4 = getPlayerStorageValue(player4.uid,2082)

			if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
				nplayer1pos = {x=701, y=374, z=7}
				nplayer2pos = {x=700, y=374, z=7}
				nplayer3pos = {x=699, y=374, z=7}
				nplayer4pos = {x=698, y=374, z=7}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)

                                doSummonCreature(monster,pos)
                                doSummonCreature(monster2,pos2)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)

				doTransformItem(item.uid,item.itemid+1)
			else
				doPlayerSendCancel(cid,"Alguem no seu time jah fez a quest.")
			end
		else
			doPlayerSendCancel(cid,"Voce precisa de 4 pessoas para a quest.")
		end

	elseif item.uid ==2082 and item.itemid == 1946 then
		if (dzwignia - os.clock()) > 30 then
		doTransformItem(item.uid,item.itemid-1)
		end
		if getPlayerAccess(cid) > 0 then
			doTransformItem(item.uid,item.itemid-1)
			end
		end
	return 1
end
