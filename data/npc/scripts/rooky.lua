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
	
	local tpPos = {x=819, y=1096, z=7}
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local storage = 2067
	
	if(msgcontains(msg, 'mission') or msgcontains(msg, 'golem blueprint')) then
		if(getPlayerStorageValue(cid, storage) < 1) then
			npcHandler:say("Ola, vc conseguiu o {golem blueprint}?", cid)
			setPlayerStorageValue(cid, storage, 1)
		elseif(getPlayerStorageValue(cid, storage) == 1) then
			npcHandler:say("Eh verdade! Voce tem a golem blueprint!!! Fale {sim} e o levarei a uma sala onde voce podera terminar a quest da rooks fury, aceita?, obs: vc só volta após matar o chaos de rook", cid)
			talkState[talkUser] = 1
		elseif(getPlayerStorageValue(cid, storage) == 2) then
			npcHandler:say("Sorry, você já fez essa quest ou naum tem o golem print!", cid)
		end
	elseif(msgcontains(msg, 'sim') and talkState[talkUser] == 1) then
		if(doPlayerRemoveItem(cid,10165,1) == TRUE) then
			doTeleportThing(cid,tpPos)
			npcHandler:say("Boa sorte!!!!", cid)
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
