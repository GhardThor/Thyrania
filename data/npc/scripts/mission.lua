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
	local storage = 8007
	if(msgcontains(msg, 'missoes')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Ola, voce sabe a palavra magica?", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Fale a palavra magica!", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Você ja pode entrar na porta!!", cid)
		end
	elseif(msgcontains(msg, 'moriundo') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 0) == TRUE) then
			npcHandler:say("Parabéns, agora você pode passar pela porta!", cid)
			setPlayerStorageValue(cid, storage)
			talkState[talkUser] = 0
		else
			npcHandler:say("Você já está preparado e pode passar pela porta!", cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] > 0) then
		npcHandler:say("Então sai daqui seu @#$%.", cid)
		talkState[talkUser] = 0
	end
	return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())