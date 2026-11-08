pirata = {x=727, y=1290, z=6}
				
local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			return true
		end
	end
	return false
end

local function addFocus(cid)
	if(not isFocused(cid)) then
		table.insert(focuses, cid)
	end
end
local function removeFocus(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			table.remove(focuses, i)
			break
		end
	end
end
local function lookAtFocus()
	for i, v in pairs(focuses) do
		if(isPlayer(v)) then
			doNpcSetCreatureFocus(v)
			return
		end
	end
	doNpcSetCreatureFocus(0)
end


function onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
	if(isFocused(cid)) then
		selfSay("Hmph!")
		removeFocus(cid)
		if(isPlayer(cid)) then --Be sure he's online
			closeShopWindow(cid)
		end
	end
end


function onCreatureTurn(creature)

end


function onCreatureSay(cid, type, msg)
	if((msg == "hi") and not (isFocused(cid))) then
		selfSay("Ola", cid, true)
		selfSay("Hummm... voce eh apenas outro que passa ou quer saber minha {historia}? Tambem sei sobre a sereia!", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "historia")) then
		selfSay("Como você pode ver, fui sequestrado por alguns piratas que me mantém de refém, somente eu sei onde é o barco deles! eh um grande e assombrado BARCO PIRATA!", cid)
				addFocus(cid)
	elseif((isFocused(cid)) and (msg == "barco pirata")) then	      
			doTeleportThing(cid, pirata, true)
			doSendMagicEffect(pirata, 65)
			selfSay("Ai vai um bravo guerreiro...", cid)
			addFocus(cid)
	elseif((isFocused(cid)) and (msg == "sereia")) then
			selfsay("A sereia se encontra a oeste de Murnia, numa pequena baia, ao norte da ponte que conecta Venga com Murnia...", cid)
			addFocus(cid)
	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("Goodbye!", cid, true)
		closeShopWindow(cid)
		removeFocus(cid)
	end
end

function onPlayerCloseChannel(cid)
	if(isFocused(cid)) then
		selfSay("Hmph!")
		closeShopWindow(cid)
		removeFocus(cid)
	end
end

function onThink()
	for i, focus in pairs(focuses) do
		if(not isCreature(focus)) then
			removeFocus(focus)
		else
			local distance = getDistanceTo(focus) or -1
			if((distance > 4) or (distance == -1)) then
				selfSay("Hmph!")
				closeShopWindow(focus)
				removeFocus(focus)
			end
		end
	end
	lookAtFocus()
end