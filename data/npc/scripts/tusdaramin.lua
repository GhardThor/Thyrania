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
	local storage = 1311
	if(msgcontains(msg, 'blue djinn') then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Para começar a Blue Djinn Quest fale com Bo\'ques no terceiro andar. Pergunte-o sobre a {missão} e a {recompensa}...", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Para começar a Green Djinn Quest fale com Ashtamin no segundo andar do pequeno prédio separado deste. Pergunte-o sobre a {missão} e a {recompensa}!", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, você já fez essa quest!", cid)
		end
	elseif(msgcontains(msg, 'green djinn') then
		if(doPlayerRemoveMoney(cid, 0) == TRUE) then
			npcHandler:say("Para começar a Green Djinn Quest fale com Ashtamin no segundo andar do pequeno prédio separado deste. Pergunte-o sobre a {missão} e a {recompensa}!", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
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
