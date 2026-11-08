local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
pos1 = {x=381, y=165, z=9}
pos2 = {x=386, y=165, z=9}
pos3 = {x=384, y=166, z=9}
pos4 = {x=382, y=166, z=9}
pos5 = {x=379, y=168, z=9}
pos6 = {x=385, y=168, z=9}
pos7 = {x=383, y=169, z=9}
pos8 = {x=379, y=164, z=9}
pos9 = {x=387, y=164, z=9}
monster = "orc warlord"
monster1 = "orc leader"
monster2 = "orc berserker"

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
                if getPlayerStorageValue(cid,2240) == -1 then
  		selfSay('Não reconheço sua voz! Peguem este intruso!')
                doSummonCreature(monster,pos1)
                doSummonCreature(monster,pos2)
                doSummonCreature(monster,pos3)
                doSummonCreature(monster,pos4)
                doSummonCreature(monster2,pos5)
                doSummonCreature(monster2,pos6)
                doSummonCreature(monster1,pos7)
                doSummonCreature(monster1,pos8)
                doSummonCreature(monster1,pos9)
                setPlayerStorageValue(cid,2240,1)
                focus = cid
  		talk_start = os.clock()
                else
                selfSay('Reconheço sua voz, você é "' .. getCreatureName(cid) .. '"! O que quer de mim?')
                focus = cid
  		talk_start = os.clock()
                end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Mande seu amigo não interromper nossa conversa novamente ou irei chamar meu servos novamente!')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'lamp') then
			if getPlayerStorageValue(cid,2238) == -1 then
     selfSay('Você não tem o requerimento de Bo\'ques...')
     elseif getPlayerStorageValue(cid,2238) == 2 then
     selfSay('Você já pegou a lamp...')
     else
     selfSay('Aqui está a Lamp de Bo\'ques...')
     doPlayerAddItem(cid,2344,1)
     setPlayerStorageValue(cid,2238,2)
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
