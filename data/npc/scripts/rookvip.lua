local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg)                end
function onThink()                                      npcHandler:onThink()                                    end
function creatureSayCallback(cid, type, msg)
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	--[[
	REMEMBER TO SET YOUR STORAGE AS YOURSTORAGE!
	]]--
	local storage = 1312
	if(msgcontains(msg, 'brinquedo') or msgcontains(msg, 'rato')) then

		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Mim brinquedo ser um rato e uma almofada, se você os achou dizer RATO", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Você trouxe meu rato?", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, voce já fez essa quest!", cid)
		end
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
			if doPlayerRemoveItem(cid,7485,1) == TRUE and doPlayerRemoveItem(cid,7487,1) == TRUE then
			npcHandler:say("Mim agradece! Mim dar recompensa, você!", cid)
			doPlayerAddItem(cid, 2490, 1)
			setPlayerStorageValue(cid, storage, 2)
			talkState[talkUser] = 0
		else
			npcHandler:say("Você não tem meu brinquedo. BUAAAAAA!!", cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] > 0) then
		npcHandler:say("Saia daqui!", cid)
		talkState[talkUser] = 0
	end
	return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
