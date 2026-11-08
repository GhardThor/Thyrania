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
          selfSay('Whimpy.')
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

  	if (msgcontains(msg, 'ruan') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Ruan ' .. getCreatureName(cid) .. '! Suk mikaha duk hyth duk uthat.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'ruan') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Braska, ' .. getCreatureName(cid) .. '!')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'hyth') then
                if getPlayerStorageValue(cid,8586599) == -1 then
     selfSay('San kuji hulu pithin duk hyth, kuji nued duk makaht duk Jack, Ni Stugha, quko kuji ni repo ni repo, vulthi fuktha.')
     else
     selfSay('Akit tuta bruk hure inip duk kaht, ahu kuji ig mikaha duk hyth, ratak efa Jack, Ni Stugha lacun yhun wond, Ratak "KAHT" lacun Jack.')
     setPlayerStorageValue(cid,8586599,2)
     doPlayerAddItem(cid,4873,1)
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