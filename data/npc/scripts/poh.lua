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
	local storage = 1070
	if(msgcontains(msg, 'jungle')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Você deve abrir o bug antes de falar comigo.", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Parabens, agora para voce poder completar a jungle quest, diga {info}", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, você já fez essa quest!", cid)
		end
	elseif(msgcontains(msg, 'info') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 0) == TRUE) then
			npcHandler:say("A quest esta localizada no norte de Talas.", cid)
			setPlayerStorageValue(cid, 2072)
			talkState[talkUser] = 0
		else
			npcHandler:say("Sorry, você já fez essa quest!.", cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] > 0) then
		npcHandler:say("Then not.", cid)
		talkState[talkUser] = 0
	end
	return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
