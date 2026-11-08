-- Made by Coltain13 // Coltain --
-- If you use or edit, please give credit to me --

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

local node1 = keywordHandler:addKeyword({'gems'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I will buy Black Pearl, Scarab Coin, Small Amethyst, Small Diamond, Small Emerald, Small Sapphire, Small Ruby, or White Pearls.'})

shopModule:addSellableItem({'black pearl', 'black pearls'},				2144, 280,		'black pearl')
shopModule:addSellableItem({'scarab coin', 'scarab coins'},				2159, 100,		'scarab coin')
shopModule:addSellableItem({'small amethyst', 'small amethysts'},		2150, 200,		'small amethyst')
shopModule:addSellableItem({'small diamond', 'small diamonds'},			2145, 300,		'small diamond')
shopModule:addSellableItem({'small emerald', 'small emeralds'},			2149, 250,		'small emerald')
shopModule:addSellableItem({'small sapphire', 'small sapphires'},		2146, 250,		'small sapphire')
shopModule:addSellableItem({'small ruby', 'small rubys'},				2147, 250,		'small ruby')
shopModule:addSellableItem({'white pearl', 'white pearls'},				2143, 320,		'white pearl')

local node1 = keywordHandler:addKeyword({'enchanted'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I will NOT buy your enchanted rubbish!'})


npcHandler:addModule(FocusModule:new())