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
  		selfSay('Ola ' .. getCreatureName(cid) .. '! Posso lhe ajudar em algo?')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Estou ocupado.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'desafio da sereia') then
			selfSay('Aaaahhh... voce se refere a aquela maldita sereia que fica numa pequena praia? Ela tentou me lançar um feitiço! Tenha cuidado com os poderes dela... Voce realmente deseja saber sobre o desafio?')

	elseif msgcontains(msg, 'sim') then
			selfSay('Humm... Você só precisa dizer "TROPICALIS" para a sereia, ela o levara para uma floresta úmida e cheia de monstros perigosos, você poderá voltar de lá quando quiser, mais para finalizar o desafio você precisa entregar o "fish fin" para a sra. tweedy! cuidado meu jovem aventureiro, há muito para aprender sobre este continente, o submundo não é para fracos como você!')

        elseif msgcontains(msg, 'sociedade') then
                        if getPlayerStorageValue(cid,8586599) == -1 then
			selfSay('Hmm, quer dizer que você falou com o Lugha, se você conseguiu ir até lá, então você é bem vindo na sociedade, você tem minha permissão.') 
                        setPlayerStorageValue(cid,8586599,1)
                        else
                        selfSay('Você já tem minha permissão, vá falar com Lugha.')
                        end

	elseif msgcontains(msg, 'permissão') then
			if getPlayerStorageValue(cid,8586599) == -1 then
			selfSay('Hmm, quer dizer que você falou com o Lugha, se você conseguiu ir até lá, então você é bem vindo na sociedade, você tem minha permissão.') 
                        setPlayerStorageValue(cid,8586599,1)
                        else
                        selfSay('Você já tem minha permissão, vá falar com Lugha.')
                        end

        elseif msgcontains(msg, 'kaht') then
                        if getPlayerStorageValue(cid,8586599) == 2 then
			selfSay('Vejo que está melhorando sua fala, agora para finalizar sua entrada na sociedade, me pague 10k, para aceitar diga: MEMBRO, na linguagem dos minotauros!')
                        else
                        selfSay('Você não tem o broche dos exploradores.')
                        end
        elseif msgcontains(msg, 'mikaha') then
                        if doPlayerRemoveMoney(cid,10000) == 1 then
			selfSay('Ótimo, agora você pode entrar na sala da Dwarven Armor(Localizada na Crusader Helmet Quest) e na pequena ilha dos exploradores!')
                        setPlayerStorageValue(cid,8586599,3)
                        else
                        selfSay('Você não tem os 10k.')
                        end

        elseif msgcontains(msg, 'cookbook') then
                        if getPlayerStorageValue(cid,2237) <= 1 then
			selfSay('Você não tem o requerimento de Bo\'ques.')
                        elseif getPlayerStorageValue(cid,2242) == 1 then
                        selfSay('Você já pegou seu cookbook.')
                        else
                        selfSay('HAHAHA! Mais um achando que irá conseguir a autorização para falar com Djanni... pff, de qualquer modo aqui está seu cookbook.')
                        doPlayerAddItem(cid,2347,1)
                        setPlayerStorageValue(cid,2242,1)
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

