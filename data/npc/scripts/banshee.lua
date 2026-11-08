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
  		selfSay('Um humano por aqui? coisa rara... Para receber a aprovação da Seal 7, você precisa ter completado todas as outras Seals, para começar a verificação diga: Seal1')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Não interrompa minha conversa.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'seal1') then
			if getPlayerStorageValue(cid,2193) == -1 then
     selfSay('Hummm... Não, sua Seal1 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, diga: Seal2')
     end

                elseif msgcontains(msg, 'seal2') then
			if getPlayerStorageValue(cid,2200) == -1 then
     selfSay('Hummm... Não, sua Seal2 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, diga: Seal3')
     end

                elseif msgcontains(msg, 'seal3') then
			if getPlayerStorageValue(cid,2212) == -1 then
     selfSay('Hummm... Não, sua Seal3 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, diga: Seal4')
     end

                elseif msgcontains(msg, 'seal4') then
			if getPlayerStorageValue(cid,2213) == -1 then
     selfSay('Hummm... Não, sua Seal4 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, diga: Seal5')
     end

                elseif msgcontains(msg, 'seal5') then
			if getPlayerStorageValue(cid,2215) == -1 then
     selfSay('Hummm... Não, sua Seal5 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, diga: Seal6')
     end

                elseif msgcontains(msg, 'seal6') then
			if getPlayerStorageValue(cid,2216) == -1 then
     selfSay('Hummm... Não, sua Seal6 está incompleta.')
     else
     selfSay('Sim, vejo que você realmente completou, para finalizar a última seal diga: beijo')
     end

               elseif msgcontains(msg, 'beijo') then
			if getPlayerStorageValue(cid,2193) == -1 or getPlayerStorageValue(cid,2200) == -1 or getPlayerStorageValue(cid,2212) == -1 or getPlayerStorageValue(cid,2213) == -1 or getPlayerStorageValue(cid,2215) == -1 or getPlayerStorageValue(cid,2216) == -1 then
     selfSay('Hummm... Não, você não completou alguma das seals.')
     else
     selfSay('Um Beijo da Rainha dos Banshees! Agora você deve voltar para finalizar a quest!')
     setPlayerStorageValue(cid,2224,1)
     travel(cid, 84, 511, 7)
					focus = 0
					talk_start = 0
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
