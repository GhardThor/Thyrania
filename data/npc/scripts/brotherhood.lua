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
  		selfSay('Hiho ' .. getCreatureName(cid) .. ' Eu posso liberar o Brotherhood Addon 1 e 2, para mais infos diga help.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'help') then
			selfSay('Para saber mais sobre o addon 1, diga: bones, para saber sobre o addon 2, diga: brotherhood')


	elseif msgcontains(msg, 'bones') then
                 if getPlayerStorageValue(cid,813232) >= 4 then
					selfSay('You already have this addon.')

                 else if getPlayerStorageValue(cid,813232) == 3 then
                    selfSay('Para o Addon1 da Brotherhood é necessário terminar a Roc Feather Quest, se você a terminou diga: feather')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,813232,3)
                    selfSay('Para o Addon1 da Brotherhood é necessário terminar a Roc Feather Quest, se você a terminou diga: feather')
        end
	end
	elseif msgcontains(msg, 'feather') and addon_state == 2 then
                 if getPlayerStorageValue(cid,2072) == -1 then
		  			selfSay('Você não terminou a quest.')
                 else  
			selfSay('Você está um passo mais perto de entrar para a Irmandade.')
			if getPlayerSex(cid) == 0 then
		    doPlayerAddOutfit(cid, 279, 1)
		    setPlayerStorageValue(cid,813232,4)
			else
			doPlayerAddOutfit(cid, 278, 1)
			setPlayerStorageValue(cid,813232,4)
		    talk_state = 1
			end
        end	

       elseif msgcontains(msg, 'brotherhood') then
                 if getPlayerStorageValue(cid,813333) >= 4 then
					selfSay('You already have this addon.')

                 else if getPlayerStorageValue(cid,813333) == 3 then
                    selfSay('Para obter o Addon2 voce precisa ter terminado a Arena no modo Warlord, se voce jah terminou diga: yes .')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,8133333,3)
                    selfSay('Para obter o Addon2 voce precisa ter terminado a Arena no modo Warlord, se voce jah terminou diga: yes .')
        end
	end
	elseif msgcontains(msg, 'yes') and addon_state == 2 then
                 if getPlayerStorageValue(cid,42381) == -1 then
		  			selfSay('Você não terminou a quest.')
                 else  
			selfSay('Você agora é um membro da Irmandade.')
			if getPlayerSex(cid) == 0 then
		    doPlayerAddOutfit(cid, 279, 2)
		    setPlayerStorageValue(cid,2048,4)
			else
			doPlayerAddOutfit(cid, 278, 2)
			setPlayerStorageValue(cid,2048,4)
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


