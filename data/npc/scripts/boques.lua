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
  		selfSay('Ola ' .. getCreatureName(cid) .. '! Você veio por causa da missão?')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'missão') then
     selfSay('Humm, sim eu tenho uma missão para você... Se quiser começar a missão agora diga: começar')

                elseif msgcontains(msg, 'recompensa') then
     selfSay('Esta missão lhe dará a possibilidade de comercializar items com Djanni, items que não podem ser vendidos em lojas normais...')

     elseif msgcontains(msg, 'começar') then
                if getPlayerStorageValue(cid,2237) == -1 then
                selfSay('Muito bem, a primeira parte é bem simples, me traga 10 pieces of blue cloth... se já tiver elas diga: blue cloth')
                setPlayerStorageValue(cid,2237,1)
                else
                selfSay('Se você trouxe as 10 pieces diga : blue cloth')
                end

     elseif msgcontains(msg, 'blue cloth') then
     if doPlayerRemoveItem(cid,5912,10) == 0 then
     selfSay('Você não trouxe as 10 pieces of blue cloth...')
     else
     selfSay('Ótimo, ótimo, agora me traga um cookbook, ele só pode ser obtido com Jack, O analista, quando o trouxer diga: cookbook ')
     setPlayerStorageValue(cid,2237,2)
     end

     elseif msgcontains(msg, 'cookbook') then
     if doPlayerRemoveItem(cid,2347,1) == 0 then
     selfSay('Você não trouxe o cookbook...')
     else
     selfSay('Fantástico!! Parece que os seres humanos realmente cumprem com suas palavras... para a próxima parte da missão diga: cheese ')
     setPlayerStorageValue(cid,2237,3)
     end

     elseif msgcontains(msg, 'cheese') then
     if getPlayerStorageValue(cid,2237) >= 3 then
     selfSay('Vamos a terceira parte da missão, fale com a Rata Mari no subsolo da nossa fortaleza e pergunte sobre o spy report, se você já falou com ela então diga: spy report')
     else
     selfSay('Não tente me enganar, faça as missões em sua ordem.')
     end

     elseif msgcontains(msg, 'spy report') then
     if doPlayerRemoveItem(cid,2345,1) == 0 then
     selfSay('Você não trouxe o spy report...')
     else
     selfSay('Perfeito, estamos quase terminando a missão, fale com o The Orc King e pergunte sobre a LAMP. Quando voltar com minha lâmpada mágica diga: lamp')
     setPlayerStorageValue(cid,2238,1)
     end

     elseif msgcontains(msg, 'lamp') then
                if getPlayerStorageValue(cid,2238) == -1 then
                selfSay('Você não terminou a missões anteriores ainda...')
                elseif getPlayerStorageValue(cid,2238) == 1 then
                selfSay('Você não falou com o Orc King ainda...')
                else
                selfSay('Muito bem, agora para finalizar a missão suba até o último andar desta fortaleza, coloque a gemmed lamp ao lado da alavanca e puxe a alavanca... quando tiver feito isso volte e diga: finished')
                end

     elseif msgcontains(msg, 'finished') then
                if getPlayerStorageValue(cid,2239) == -1 then
                selfSay('Você não sacrificou sua gemmed lamp ainda...')
                else
                selfSay('HAHAHA! Incrível, você conseguiu! Meus parabéns, você foi habilitado a entrar na sala do Djanni!')
                setPlayerStorageValue(cid,1050,1)
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
