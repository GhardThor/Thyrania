local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. Can you help me? If you help me, I will reward you with beautiful addons! Say {addons} or {help} if you do not know what to do.")

function playerBuyAddonNPC(cid, message, keywords, parameters, node)
	local player = Player(cid)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    if (parameters.confirm ~= true) and (parameters.decline ~= true) then
        if(player:getPremiumDays(cid) == 0) and (parameters.premium == true) then
            npcHandler:say('Sorry, but this addon and only for premium players!', cid)
            npcHandler:resetNpc()
            return true
        end
        if (player:getStorageValue(parameters.storageID) ~= -1) then
            npcHandler:say('You already have this addon!', cid)
            npcHandler:resetNpc()
            return true
        end
        local itemsTable = parameters.items
        local items_list = ''
        if table.maxn(itemsTable) > 0 then
            for i = 1, table.maxn(itemsTable) do
                local item = itemsTable[i]
                items_list = items_list .. item[2] .. ' ' .. getItemName(item[1])
                if i ~= table.maxn(itemsTable) then
                    items_list = items_list .. ', '
                end
            end
        end
        local text = ''
        if (parameters.cost > 0) and table.maxn(parameters.items) then
            text = items_list .. ' and ' .. parameters.cost .. ' gp'
        elseif (parameters.cost > 0) then
            text = parameters.cost .. ' gp'
        elseif table.maxn(parameters.items) then
            text = items_list
        end
        npcHandler:say('Brought me ' .. text .. ' by ' .. keywords[1] .. '?', cid)
        return true
    elseif (parameters.confirm == true) then
        local addonNode = node:getParent()
        local addoninfo = addonNode:getParameters()
        local items_number = 0
        if table.maxn(addoninfo.items) > 0 then
            for i = 1, table.maxn(addoninfo.items) do
                local item = addoninfo.items[i]
                if (player:getItemCount(item[1]) >= item[2]) then
                    items_number = items_number + 1
                end
            end
        end
        if(player:getMoney(cid) >= addoninfo.cost) and (items_number == table.maxn(addoninfo.items)) then
            player:removeMoney(addoninfo.cost)
            if table.maxn(addoninfo.items) > 0 then
                for i = 1, table.maxn(addoninfo.items) do
                    local item = addoninfo.items[i]
                    player:removeItem(item[1],item[2])
                end
            end
            player:addOutfitAddon(addoninfo.outfit_male, addoninfo.addon)
            player:addOutfitAddon(addoninfo.outfit_female, addoninfo.addon)
            player:setStorageValue(addoninfo.storageID,1)
            npcHandler:say('Here it is.', cid)
        else
            npcHandler:say('You do not have the necessary items or money!', cid)
        end
        npcHandler:resetNpc()
        return true
    elseif (parameters.decline == true) then
        npcHandler:say('This does not interest you? Try another!', cid)
        npcHandler:resetNpc()
        return true
    end
    return false
end

local noNode = KeywordNode:new({'no'}, playerBuyAddonNPC, {decline = true})
local yesNode = KeywordNode:new({'yes'}, playerBuyAddonNPC, {confirm = true})

-- citizen (done)
local outfit_node = keywordHandler:addKeyword({'first citizen addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5878,100}}, outfit_female = 136, outfit_male = 128, addon = 1, storageID = 10021}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second citizen addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5890,100}, {5902,50}, {2480,1}}, outfit_female = 136, outfit_male = 128, addon = 2, storageID = 10022}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 

-- hunter (done)
local outfit_node = keywordHandler:addKeyword({'first hunter addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5876,100}, {5948,100}, {5891,5}, {5887,1}, {5889,1}, {5888,1}}, outfit_female = 137, outfit_male = 129, addon = 1, storageID = 10071}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second hunter addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5875,1}}, outfit_female = 137, outfit_male = 129, addon = 2, storageID = 10072}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode)

-- mage (done)
local outfit_node = keywordHandler:addKeyword({'first mage addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{2182,1}, {2186,1}, {2185,1}, {8911,1}, {2181,1}, {2183,1}, {2190,1}, {2191,1}, {2188,1}, {8921,1}, {2189,1}, {2187,1}, {2392,30}}, outfit_female = 138, outfit_male = 130, addon = 1, storageID = 10023}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second mage addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5903,1}}, outfit_female = 138, outfit_male = 130, addon = 2, storageID = 10024}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 

-- knight (done)
local outfit_node = keywordHandler:addKeyword({'first knight addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5880,100}, {5892,1}}, outfit_female = 139, outfit_male = 131, addon = 1, storageID = 10073}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second knight addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5893,100}, {5885,1}, {5887,1}}, outfit_female = 139, outfit_male = 131, addon = 2, storageID = 10074}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode)

-- Nobleman (done)
local outfit_node = keywordHandler:addKeyword({'first nobleman addon'}, playerBuyAddonNPC, {premium = false, items = {{0000,0000}}, cost = 150000, outfit_female = 140, outfit_male = 132, addon = 1, storageID = 10075}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second nobleman addon'}, playerBuyAddonNPC, {premium = false, items = {{0000,0000}}, cost = 150000, outfit_female = 140, outfit_male = 132, addon = 2, storageID = 10076}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode)

-- Summoner (done)
local outfit_node = keywordHandler:addKeyword({'first summoner addon'}, playerBuyAddonNPC, {premium = false, items = {{5958,1}}, cost = 0, outfit_female = 141, outfit_male = 133, addon = 1, storageID = 10075}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode) 
local outfit_node = keywordHandler:addKeyword({'second summoner addon'}, playerBuyAddonNPC, {premium = false, items = {{5894,70}, {5911,20}, {5883,40}, {5922,35}, {5886,10}, {5881,60}, {5882,40}, {5904,15}, {5905,30}}, cost = 0, outfit_female = 141, outfit_male = 133, addon = 2, storageID = 10076}) 
outfit_node:addChildKeywordNode(yesNode) 
outfit_node:addChildKeywordNode(noNode)

-- barbarian (done)
local outfit_node = keywordHandler:addKeyword({'first barbarian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5884,1}, {5911,10}, {5886,10}}, outfit_female = 147, outfit_male = 143, addon = 1, storageID = 10025})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second barbarian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5880,100}, {5892,1}, {5893,50}, {5876,5}}, outfit_female = 147, outfit_male = 143, addon = 2, storageID = 10026})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- druid (done)
local outfit_node = keywordHandler:addKeyword({'first druid addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5896,50}, {5897,50}}, outfit_female = 148, outfit_male = 144, addon = 1, storageID = 10027})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second druid addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5906,100}, {5940,1}}, outfit_female = 148, outfit_male = 144, addon = 2, storageID = 10028})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- nobleman (done)
local outfit_node = keywordHandler:addKeyword({'first nobleman addon'}, playerBuyAddonNPC, {premium = false, cost = 150000, items = {}, outfit_female = 140, outfit_male = 132, addon = 1, storageID = 10029})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second nobleman addon'}, playerBuyAddonNPC, {premium = false, cost = 150000, items = {}, outfit_female = 140, outfit_male = 132, addon = 2, storageID = 10030})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
	
-- oriental (done)
local outfit_node = keywordHandler:addKeyword({'first oriental addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5945,1}}, outfit_female = 150, outfit_male = 146, addon = 1, storageID = 10031})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second oriental addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5883,100}, {5895,100}, {5891,1}, {5912,100}}, outfit_female = 150, outfit_male = 146, addon = 2, storageID = 10032})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- Pirate (done)
local outfit_node = keywordHandler:addKeyword({'first pirate addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{6098,100}, {6126,100}, {6097,100}}, outfit_female = 155, outfit_male = 151, addon = 1, storageID = 10031})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second pirate addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{6101,1}, {6102,1}, {6100,1}, {6099,1}}, outfit_female = 155, outfit_male = 151, addon = 2, storageID = 10032})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
	
-- warrior (done)
local outfit_node = keywordHandler:addKeyword({'first warrior addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5925,15}, {5899,50}, {5884,1}, {5919,1}}, outfit_female = 142, outfit_male = 134, addon = 1, storageID = 10033})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second warrior addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5880,100}, {5887,1}}, outfit_female = 142, outfit_male = 134, addon = 2, storageID = 10034})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- wizard (done)
local outfit_node = keywordHandler:addKeyword({'first wizard addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{2536,1}, {2492,1}, {2488,1}, {2123,1}}, outfit_female = 149, outfit_male = 145, addon = 1, storageID = 10035})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second wizard addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5922,50}}, outfit_female = 149, outfit_male = 145, addon = 2, storageID = 10036})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- assassin (done)
local outfit_node = keywordHandler:addKeyword({'first assassin addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5912,50}, {5910,50}, {5911,50}, {5913,50}, {5914,50}, {5909,50}}, outfit_female = 156, outfit_male = 152, addon = 1, storageID = 10037})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second assassin addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5804,1}, {5930,10}}, outfit_female = 156, outfit_male = 152, addon = 2, storageID = 10038})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- shaman (done)
local outfit_node = keywordHandler:addKeyword({'first shaman addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{5810,1}, {3955,1}, {5015,1}}, outfit_female = 158, outfit_male = 154, addon = 1, storageID = 10039})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second shaman addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{3966,5}, {3967,5}}, outfit_female = 158, outfit_male = 154, addon = 2, storageID = 10040})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- jester (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first jester addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{7957,1}}, outfit_female = 270, outfit_male = 273, addon = 1, storageID = 10041})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second jester addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{7958,1}}, outfit_female = 270, outfit_male = 273, addon = 2, storageID = 10042})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- nightmare (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first nightmare addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{6500,1500}}, outfit_female = 269, outfit_male = 268, addon = 1, storageID = 10043})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second nightmare addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{6500,1500}}, outfit_female = 269, outfit_male = 268, addon = 2, storageID = 10044})
    outfit_node:addChildKeywordNode(yesNode)
    outfit_node:addChildKeywordNode(noNode)

-- yalaharian (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first yalaharian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{9955,1}}, outfit_female = 324, outfit_male = 325, addon = 1, storageID = 10045})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second yalaharian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{10309,1}}, outfit_female = 324, outfit_male = 325, addon = 2, storageID = 10046})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)

-- Warmaster (done)
local outfit_node = keywordHandler:addKeyword({'first warmaster addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{11328,1}}, outfit_female = 335, outfit_male = 336, addon = 1, storageID = 10047})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second warmaster addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{11231,1}}, outfit_female = 335, outfit_male = 336, addon = 2, storageID = 10048})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Wayfarer (done)
local outfit_node = keywordHandler:addKeyword({'first wayfarer addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{12657,1}}, outfit_female = 366, outfit_male = 367, addon = 1, storageID = 10049})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second wayfarer addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{12656,1}}, outfit_female = 366, outfit_male = 367, addon = 2, storageID = 10050})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Afflicted (done)
local outfit_node = keywordHandler:addKeyword({'first afflicted addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{13545,1}, {13543,1}, {13541,1}, {13540,1}, {13542,1}, {13544,1}}, outfit_female = 431, outfit_male = 430, addon = 1, storageID = 10051})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second afflicted addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{13926,1}}, outfit_female = 431, outfit_male = 430, addon = 2, storageID = 10052})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Deepling (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first deepling addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{15435,1}, {15436,1}, {15434,1}}, outfit_female = 464, outfit_male = 463, addon = 1, storageID = 10053})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second deepling addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{15432,1}}, outfit_female = 464, outfit_male = 463, addon = 2, storageID = 10054})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Insectoid (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first insectoid addon'}, playerBuyAddonNPC, {premium = false, cost = 50000, items = {}, outfit_female = 466, outfit_male = 465, addon = 1, storageID = 10055})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second insectoid addon'}, playerBuyAddonNPC, {premium = false, cost = 100000, items = {}, outfit_female = 466, outfit_male = 465, addon = 2, storageID = 10056})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Crystal Warlord (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first crystal warlord addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{18521,1}}, outfit_female = 513, outfit_male = 512, addon = 1, storageID = 10057})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second crystal warlord addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{18522,1}}, outfit_female = 513, outfit_male = 512, addon = 2, storageID = 10058})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Soil Guardian (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first soil guardian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{18518,1}}, outfit_female = 514, outfit_male = 516, addon = 1, storageID = 10059})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second soil guardian addon'}, playerBuyAddonNPC, {premium = false, cost = 0, items = {{18519,1}}, outfit_female = 514, outfit_male = 516, addon = 2, storageID = 10060})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Cave Explorer (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first cave explorer addon'}, playerBuyAddonNPC, {premium = true, cost = 200000, items = {}, outfit_female = 575, outfit_male = 574, addon = 1, storageID = 10067})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second cave explorer addon'}, playerBuyAddonNPC, {premium = true, cost = 300000, items = {}, outfit_female = 575, outfit_male = 574, addon = 2, storageID = 10068})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Dream Warden (done)(custom)
local outfit_node = keywordHandler:addKeyword({'first dream warden addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{22609,1}}, outfit_female = 578, outfit_male = 577, addon = 1, storageID = 10069})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second dream warden addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{22610,1}}, outfit_female = 578, outfit_male = 577, addon = 2, storageID = 10070})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Beggar
local outfit_node = keywordHandler:addKeyword({'first beggar addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{5878,50}, {5921,30}, {5913,20}, {5894,10}}, outfit_female = 157, outfit_male = 153, addon = 1, storageID = 10071})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second beggar addon'}, playerBuyAddonNPC, {premium = true, cost = 20000, items = {{5883,100}}, outfit_female = 157, outfit_male = 153, addon = 2, storageID = 10072})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Brotherhood
local outfit_node = keywordHandler:addKeyword({'first brotherhood addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{6500,1500}}, outfit_female = 279, outfit_male = 278, addon = 1, storageID = 10073})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second brotherhood addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{6500,1500}}, outfit_female = 279, outfit_male = 278, addon = 2, storageID = 10074})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Norseman
local outfit_node = keywordHandler:addKeyword({'first norseman addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{7290,5}}, outfit_female = 252, outfit_male = 251, addon = 1, storageID = 10075})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second norseman addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{7290,10}}, outfit_female = 252, outfit_male = 251, addon = 2, storageID = 10076})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
	
-- Elementalist
local outfit_node = keywordHandler:addKeyword({'first elementalist addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{13758,20}}, outfit_female = 433, outfit_male = 432, addon = 1, storageID = 10077})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)
local outfit_node = keywordHandler:addKeyword({'second elementalist addon'}, playerBuyAddonNPC, {premium = true, cost = 0, items = {{13940,1}}, outfit_female = 433, outfit_male = 432, addon = 2, storageID = 10078})
	outfit_node:addChildKeywordNode(yesNode)
	outfit_node:addChildKeywordNode(noNode)

keywordHandler:addKeyword({'addons'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you: citizen, hunter, mage, knight, nobleman, summoner, warrior, barbarian, druid, wizard, oriental, pirate, assassin, beggar, shaman, norseman, nighmare, jester, brotherhood, yalaharian, warmaster, wayfarer, afflicted, elementalist, deepling, insectoid, crystal warlord, soil guardian, cave explorer and dream warden addons.'})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'For help with addons talk {help addon}.'})
keywordHandler:addKeyword({'help addon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To buy the first addon talk \'first NAME addon\', For the second addon talk \'second NAME addon\'.'})

npcHandler:addModule(FocusModule:new()) 