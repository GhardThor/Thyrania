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
selfSay('Yeah, you would not even know, talk to Melchior in Saaha, maybe he help you...', cid)
setPlayerStorageValue(cid,2236,1)
elseif getPlayerStorageValue(cid,2236) == 1 then
selfSay('I will not reveal the {cumprimento djin}, if you want to know talk to Melchior in Saaha.', cid)
else
selfSay('If you know the {cumprimento djin}, talk to me, so I can enter into the fortress, talk with {Ashtamin} for more help....', cid)
end
elseif msgcontains(msg, 'djanni hah') then
if getPlayerStorageValue(cid,2236) == 2 then
selfSay('Well, you were allowed to enter the fortress...', cid)
setPlayerStorageValue(cid,2236,3)
end
end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())