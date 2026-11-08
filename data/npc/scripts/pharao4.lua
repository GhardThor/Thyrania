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
  		selfSay('Ola ' .. getCreatureName(cid) .. '! Eu sou o guardiao dos tesouros, sobre qual pharao voce deseja saber, Rahemos, Morguthis, Omruc, Vashresamun, Ashmunrah ou Thalas?')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'rahemos') then
     selfSay('O tesouro de Rahemos eh um Twin Axe, se voce quiser obte-lo tera que troca-lo comigo por uma Ancient Rune.')
     
     elseif msgcontains(msg, 'morguthis') then
     selfSay('O tesouro de Morguthis eh uma Silver Mace, se voce quiser obte-la tera que troca-la comigo por uma Sword Hilt.')
  
     elseif msgcontains(msg, 'omruc') then
     selfSay('O tesouro de Omruc eh uma Pharaoh Sword, se voce quiser obte-la tera que troca-la comigo por um Crystal Arrow.')
  
     elseif msgcontains(msg, 'vashresamun') then
     selfSay('O tesouro de Vashresamun eh uma Blood Robe, se voce quiser obte-la tera que troca-la comigo por uma Blue Note.')

     elseif msgcontains(msg, 'ashmunrah') then
     selfSay('O tesouro de Ashmunrah eh um Full Helmet of the Ancients, se voce quiser obte-lo tera que troca-lo comigo por todas as 7 partes do helmet.')

     elseif msgcontains(msg, 'thalas') then
     selfSay('O tesouro de Thalas eh um Phoenix Shield, se voce quiser obte-lo tera que troca-lo comigo por uma Tear of Daraman.')
     
     elseif msgcontains(msg, 'twin axe') then
     queststatus = getPlayerStorageValue(cid,2143)
     if queststatus == -1 then
     if doPlayerRemoveItem(cid,2348,1) == 1 then
     if doPlayerAddItem(cid,2447,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Rahemos.')
     setPlayerStorageValue(cid,2143,1)
     else
     selfSay('Desculpe, voce precisa da Ancient Rune.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
          end
	  end

     elseif msgcontains(msg, 'silver mace') then
     queststatus2 = getPlayerStorageValue(cid,2144)
     if queststatus2 == -1 then
     if doPlayerRemoveItem(cid,2350,1) == 1 then
     if doPlayerAddItem(cid,2424,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Morguthis.')
     setPlayerStorageValue(cid,2144,1)
     else
     selfSay('Desculpe, voce precisa da Sword Hilt.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
          end
	  end
   
     elseif msgcontains(msg, 'pharaoh sword') then
     queststatus3 = getPlayerStorageValue(cid,2145)
     if queststatus3 == -1 then
     if doPlayerRemoveItem(cid,2352,1) == 1 then
     if doPLayerAddItem(cid,2446,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Omruc.')
     setPlayerStorageValue(cid,2145,1)
     else
     selfSay('Desculpe, voce precisa da Crystal Arrow.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
          end
	  end

     elseif msgcontains(msg, 'blood robe') then
     queststatus4 = getPlayerStorageValue(cid,2146)
     if queststatus4 == -1 then
     if doPlayerRemoveItem(cid,2349,1) == 1 then
     if doPlayerAddItem(cid,2655,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Vashresamun.')
     setPlayerStorageValue(cid,2146,1)
     else
     selfSay('Desculpe, voce precisa da Blue Note.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
          end
     
     elseif msgcontains(msg, 'phoenix shield') then
     queststatus5 = getPlayerStorageValue(cid,2147)
     if queststatus5 == -1 then
     if doPlayerRemoveItem(cid,2346,1) == 1 then
     if doPlayerAddItem(cid,2539,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Thalas.')
     setPlayerStorageValue(cid,2147,1)
     else
     selfSay('Desculpe, voce precisa da Tear of Daraman.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
          end
    	  end

     elseif msgcontains(msg, 'full helmet of the ancients') then
     queststatus6 = getPlayerStorageValue(cid,2148)
     if queststatus6 == -1 then
     if doPlayerRemoveItem(cid,2335,1) == 1 and doPlayerRemoveItem(cid,2336,1) == 1 and doPlayerRemoveItem(cid,2337,1) == 1 and doPlayerRemoveItem(cid,2338,1) == 1 and doPlayerRemoveItem(cid,2339,1) == 1 and doPlayerRemoveItem(cid,2340,1) == 1 and doPlayerRemoveItem(cid,2341,1) == 1 then
     if doPlayerAddItem(cid,2343,1) == 1 then
     selfSay('Parabens, voce adquiriu o tesouro de Ashmunrah.')
     setPlayerStorageValue(cid,2148,1)
     else
     selfSay('Desculpe, voce precisa das 7 partes do helmet.')
     
     end
     else
     selfSay('Desculpe, voce ja adquiriu este tesouro.')
     
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
end