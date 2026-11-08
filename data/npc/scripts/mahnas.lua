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
  		selfSay('Meus cumprimentos ' .. getCreatureName(cid) .. ' Eu tenho uma missão para voce, se estiver interessado diga: pharao.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'pharao') then
			selfSay('Na tumba profunda de Saaha foram enterrados 6 Pharaos e com eles seus tesouros, para entrar na sala voce precisara de uma autorizacao minha... Se quiser a autorizacao tera que cumprir uma missao, esta interessado?')


	elseif msgcontains(msg, 'sim') then
                 if getPlayerStorageValue(cid,2131) >= 1 then
					selfSay('Voce ja terminou o desafio e a sala esta liberada!')

                 else if getPlayerStorageValue(cid,2131) == 0 then
                    selfSay('Me traga 10 Yellow Pieces of Cloth e eu o autorizarei a entrar na sala! Quando as trouxer diga: clothes')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,2131,0)
                    selfSay('Me traga 10 Yellow Pieces of Cloth e eu o autorizarei a entrar na sala! Quando as trouxer diga: clothes')
        end
	end
	elseif msgcontains(msg, 'clothes') and addon_state == 2 then
                   doPlayerRemoveItem(cid,5914,10)
		  			selfSay('Volte quando tiver o que lhe pedi.')
                 else  
			selfSay('Obrigado, agora voce tem minha autorizacao para entrar na sala dos tesouros!')
			if getPlayerSex(cid) == 0 then
		    setPlayerStorageValue(cid,2131,1)
			else
			setPlayerStorageValue(cid,2131,1)
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

