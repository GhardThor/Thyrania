local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hiho ' .. getCreatureName(cid) .. ' Eu posso liberar o Nightmare Addon 1 e 2, para mais infos diga help.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'help') then
			selfSay('Se voce se acha bom o suficiente para o addon1 diga: nightmare e para o addon2 diga: mortalic')


	elseif msgcontains(msg, 'nightmare') then
                 if getPlayerStorageValue(cid,809999) >= 4 then
					selfSay('You already have this addon.')

                 else if getPlayerStorageValue(cid,809999) == 3 then
                    selfSay('Para o addon1 voce precisa ter terminado a blue legs quest, se você a terminou diga: blue')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,809999,3)
                    selfSay('Para o addon1 voce precisa ter terminado a blue legs quest, se você a terminou diga: blue')
        end
	end
	elseif msgcontains(msg, 'blue') and addon_state == 2 then
                 if getPlayerStorageValue(cid,2112) == -1 then
		  			selfSay('Voce nao terminou a quest.')
                 else  
			selfSay('Você adquiriu o Nihtmare Addon1.')
			if getPlayerSex(cid) == 0 then
		   doPlayerAddOutfit(cid, 269, 1)
		    setPlayerStorageValue(cid,809999,4)
			else
			doPlayerAddOutfit(cid, 268, 1)
			setPlayerStorageValue(cid,809999,4)
		    talk_state = 1
			end
        end	

       elseif msgcontains(msg, 'mortalic') then
                 if getPlayerStorageValue(cid,809992) >= 4 then
					selfSay('You already have this addon.')

                 else if getPlayerStorageValue(cid,809992) == 3 then
                    selfSay('Voce precisa ter o Nightmare Addon1, 1 stuffed dragon e 200k, se voce os trouxe diga: SIM ( Voce recebera uma recompensa apos terminar esse addon.) ')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,809992,3)
                    selfSay('Voce precisa ter o Nightmare Addon1, 1 stuffed dragon e 200k, se voce os trouxe diga: SIM ( Voce recebera uma recompensa apos terminar esse addon.)')
        end
	end
	elseif msgcontains(msg, 'sim') and addon_state == 2 then
                 if doPlayerRemoveItem(cid,5791,1) or getPlayerStorageValue(cid,809999) == -1 or doPlayerRemoveMoney(cid,20000) then
		  			selfSay('Desculpe, você não possui os items ou não tem o nightmare addon1.')
                 else  
			selfSay('Você agora é um verdadeiro Nightmare Knight, aceite esse escudo como recompensa!')
			if getPlayerSex(cid) == 0 then
		    doPlayerAddOutfit(cid, 269, 2)
		    setPlayerStorageValue(cid,809992,4)
                    doPlayerAddItem(cid,6391,1)
			else
			doPlayerAddOutfit(cid, 268, 2)
			setPlayerStorageValue(cid,809992,4)
			doPlayerAddItem(cid,6391,1)
		    talk_state = 1
			end
        end	
  	

        elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
            selfSay('Adeus ' .. creatureGetName(cid) .. ', Volte Sempre.')
            focus = 0
            talk_start = 0

        elseif msg ~= "" then
            selfSay('Como? Eu não entendi!')
            talk_state = 0
        end
    end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
    doNpcSetCreatureFocus(focus)
    if (os.clock() - talk_start) > 30 then
        if focus > 0 then
            selfSay('Proximo!!...')
        end
        focus = 0
        talk_start = 0
    end
    if focus ~= 0 then
        if getDistanceToCreature(focus) > 5 then
            selfSay('Good Bye')
            focus = 0
            talk_start = 0
        end
    end
end

