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
		local storage = 8010
		local storage1 = 9555
	if(msgcontains(msg, 'historias')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Bom, eu vim de uma familha de pessoas humildes, onde ninguém tinha {dinheiro} para nada...", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Hmm você já liberou uma porta e pegou o item, então não preciso contar histórias... você tem {dinheiro}?", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Você já sabe a história e tem o item! Você tem {dinheiro}?", cid)
		end
	elseif(msgcontains(msg, 'dinheiro') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 10000) == TRUE) then
			npcHandler:say("Hmm, você tem dinheiro... roubei um pouco ok? Mas Agora você ganhou um item que valeu a pena!", cid)
			setPlayerStorageValue(cid, storage1)
			doPlayerAddItem(cid, 10140) -- adds 1 medalha de curioso ashuasuhs
			talkState[talkUser] = 0
		else
			npcHandler:say("Você já ganhou seu item ou não tem dinheiro!!! Eu quero 10k", cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] > 0) then
		npcHandler:say("Você também é pobre ¬¬. Me dê 10k para saber o resto!", cid)
		talkState[talkUser] = 0
	end
	return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())