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
    
if msgcontains(msg, 'mission') then
selfSay('Hmm, yes I have a mission for you ... If you want to start the mission now say: {start}', cid)
elseif msgcontains(msg, 'reward') then
selfSay('This mission will give you the right to trade with Rashid items, items that can not be sold at ordinary shops...', cid)
elseif msgcontains(msg, 'start') then
if getPlayerStorageValue(cid, 2236) == 3 then
selfSay('Well, the first part is pretty simple, bring me 10 pieces of green cloth ... If you already have them say: {green cloth}. If you already give my green cloths, say {ultimate}', cid)
else
selfSay('Talk with Albquao first.', cid)
end
elseif msgcontains(msg, 'green cloth') and doPlayerRemoveItem(cid,5910,10) then
selfSay('This mission was not even hard ... Since I am impatient to test you, I will soon have the final proof, if you want to know what is says: {ultimate}', cid)
setPlayerStorageValue(cid,2249,1)
elseif msgcontains(msg, 'ultimate') and getPlayerStorageValue(cid,2249) >= 1 then
selfSay('Well, you need do the quest located in Thyran beholder. When you are finished say {beholder}', cid)
elseif msgcontains(msg, 'beholder') then
if getPlayerStorageValue(cid,1013) == -1 then
selfSay('You have not completed the beholder quest in Thyran.', cid)
else
selfSay('Okay, now you can do the quest in the top of the djinn fortress, do the quest and go in the door in downstairs.', cid)
setPlayerStorageValue(cid,61372,1)
end
end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  