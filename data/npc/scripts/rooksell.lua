local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end
 
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
 
 
local node1 = keywordHandler:addKeyword({'equipaments'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell equipament'})
 
shopModule:addBuyableItem({'small health potion', 'small health pot'},			8704, 20,		'small health potion')
shopModule:addBuyableItem({'antidote potion', 'antidotepotion'},		8474, 30,		'antidote potion')
shopModule:addBuyableItem({'rope', 'rope'},			2120, 40,		'rope')
shopModule:addBuyableItem({'shovel', 'shovel'},			2554, 40,		'shovel')
shopModule:addBuyableItem({'backpack', 'bp'},			1988, 20,		'backpack')
shopModule:addSellableItem({'rat', 'rat'},			3073, 5,		'rat')
shopModule:addSellableItem({'empty potion', 'empty pot'},			7636, 5,		'empty pot')

npcHandler:addModule(FocusModule:new())
 