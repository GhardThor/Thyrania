local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
	
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local storage = 1026
	
	if(msgcontains(msg, 'inquisition') or msgcontains(msg, 'inquisitor')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Ola, para entrar no clã, voce deve terminar a black knight quest, após isso fale {inquisitor}", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Parabéns! Voce realmente fez a Black Knight Quest!!! Fale {sim} e o liberarei a porta da inquisition quest!", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, você já fez essa quest!", cid)
		end
	elseif(msgcontains(msg, 'sim') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 0) == TRUE) then
			npcHandler:say("pronto, agora voce esta liberado e faz parte da tropa de elite de Talassy! Boa sorte! OBS: Vc n pode passar se nao tiver feito black knight quest", cid)
			setPlayerStorageValue(cid, 1096)
			talkState[talkUser] = 0
		else
			npcHandler:say("Sorry, você já fez essa quest!.", cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] > 0) then
		npcHandler:say("Then not.", cid)
		talkState[talkUser] = 0
	end
	return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
