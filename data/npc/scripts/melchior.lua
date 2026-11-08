local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

if(not npcHandler:isFocused(cid)) then
return false
end
	
if msgcontains(msg, 'cumprimento djin') then
if getPlayerStorageValue(cid,2236) == -1 then
selfSay('You should talk to {Albquao} before without their permission can not prove compliance.', cid)
else
selfSay('The "cumprimento" is {djanni hah} if you say that to him, you can go inside the fortress...', cid)
setPlayerStorageValue(cid,2236,2)
end
end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())