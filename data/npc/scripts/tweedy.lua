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
	
	local tpPos = {x=746, y=620, z=7}
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local storage = 1310
	
	if(msgcontains(msg, 'fish fin') or msgcontains(msg, 'desafio da sereia')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Ah meu deus! Impossivel! Se voce realmente tem uma fish fin, me diga qual o nome do desafio que voce teve que passar para obte-la!", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Eh verdade! Voce tem a fish fin!!! Fale {sim} e o levarei a uma sala onde voce podera terminar o desafio, aceita?", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, você já fez essa quest!", cid)
		end
	elseif(msgcontains(msg, 'sim') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 0) == TRUE) then
			doTeleportThing(cid,tpPos)
			npcHandler:say("Let's go!!!!", cid)
			setPlayerStorageValue(cid, storage, 2)
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
