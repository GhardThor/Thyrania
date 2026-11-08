local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
	    if(v == cid) then
		return true
	end
   end
   return false
end

local function addFocus(cid)
if(not isFocused(cid)) then
table.insert(focuses, cid)
end
end
local function removeFocus(cid)
for i, v in pairs(focuses) do
if(v == cid) then
table.remove(focuses, i)
break
end
end
end
local function lookAtFocus()
for i, v in pairs(focuses) do
if(isPlayer(v) == TRUE) then
doNpcSetCreatureFocus(v)
return
end
end
doNpcSetCreatureFocus(0)
end

local itemWindow = {
	{id=2663, subtype=0, buy=500, sell=0},
	{id=2457, subtype=0, buy=1200, sell=0},
	{id=2458, subtype=0, buy=155, sell=0},
	{id=2460, subtype=0, buy=90, sell=0},
	{id=2482, subtype=0, buy=40, sell=0},
	{id=7463, subtype=0, buy=5000, sell=0},
	{id=2463, subtype=0, buy=800, sell=0},
	{id=2465, subtype=0, buy=400, sell=0},
	{id=2464, subtype=0, buy=1500, sell=0},
	{id=2478, subtype=0, buy=2000, sell=0},
	{id=2478, subtype=0, buy=1000, sell=0},
	{id=2511, subtype=0, buy=1800, sell=0},
	{id=2510, subtype=0, buy=1450, sell=0},
	{id=2525, subtype=0, buy=3000, sell=0},
	{id=2409, subtype=0, buy=1000, sell=0},
	{id=2383, subtype=0, buy=2000, sell=0},
	{id=2377, subtype=0, buy=2000, sell=0},
	{id=2387, subtype=0, buy=5000, sell=0},
	{id=2381, subtype=0, buy=7500, sell=0},
	{id=2378, subtype=0, buy=2000, sell=0},
	{id=2388, subtype=0, buy=60, sell=0},
	{id=3962, subtype=0, buy=3000, sell=0},
	{id=2429, subtype=0, buy=6000, sell=0},
	{id=2423, subtype=0, buy=5000, sell=0},
	{id=2417, subtype=0, buy=2000, sell=0},
	{id=2398, subtype=0, buy=90, sell=0},
	{id=7430, subtype=0, buy=1000, sell=0},
	{id=2661, subtype=0, buy=1000, sell=0}
}

local items = {}
for _, item in ipairs(itemWindow) do
items[item.id] = {buyPrice = item.buy, sellPrice = item.sell, subtype = item.subtype}
end

local function getPlayerMoney(cid)
return ((getPlayerItemCount(cid, 2160) * 10000) + 
(getPlayerItemCount(cid, 2152) * 100) + 
getPlayerItemCount(cid, 2148))
end

local onBuy = function(cid, item, subtype, amount)
if(items[item] == nil) then
selfSay("Ehm.. sorry... this shouldn't be there, I'm not selling it.", cid)
return
end

if(getPlayerMoney(cid) >= amount*items[item].buyPrice) then
local itemz, i = doPlayerAddItem(cid, item, amount)
if(i < amount) then
if(i == 1) then
selfSay("Sorry, but you don't have space to take it.", cid)
else
selfSay("I've sold some for you, but it seems you can't carry more than this. I won't take more money than necessary.", cid)
doPlayerRemoveMoney(cid, amount*items[item].buyPrice)
end
else
selfSay("Thanks for the money!", cid)
doPlayerRemoveMoney(cid, amount*items[item].buyPrice)
end
else
selfSay("You don't have money.", cid)
end
end

local onSell = function(cid, item, subtype, amount)
if(items[item] == nil) then
selfSay("Ehm.. sorry... this shouldn't be there, I'm not buying it.", cid)
end

if(subtype < 1) then
subtype = -1
end
if(doPlayerRemoveItem(cid, item, amount, subtype) == TRUE) then
doPlayerAddMoney(cid, items[item].sellPrice*amount)
selfSay("Here you are.", cid)
else
selfSay("No item, no deal.", cid)
end
end

function onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
if(isFocused(cid)) then
selfSay("Hmph!")
removeFocus(cid)
if(isPlayer(cid) == TRUE) then --Be sure he's online
closeShopWindow(cid)
end
end
end

function onCreatureSay(cid, type, msg)
if((msg == "hi") and getDistanceToCreature(cid) < 4 and not (isFocused(cid))) then
selfSay("Welcome, ".. getCreatureName(cid) ..".", cid, TRUE)
selfSay("I can Sell Noob {itens}!", cid)
addFocus(cid)
elseif((isFocused(cid)) and (msg == "itens" or msg == "trade")) then
selfSay("Pretty nice, right?", cid)
openShopWindow(cid, itemWindow, onBuy, onSell)
elseif((isFocused(cid)) and (msg == "bye" or msg == "good bye" or msg == "cya")) then
selfSay("Good bye!", cid, TRUE)
closeShopWindow(cid)
removeFocus(cid)
end
end

function onPlayerCloseChannel(cid)
if(isFocused(cid)) then
selfSay("Hmph!")
closeShopWindow(cid)
removeFocus(cid)
end
end

function onPlayerEndTrade(cid)
selfSay("It was a pleasure doing business with you.", cid)
end

function onThink()
for i, focus in pairs(focuses) do
if(isCreature(focus) == FALSE) then
removeFocus(focus)
else
local distance = getDistanceTo(focus) or -1
if((distance > 4) or (distance == -1)) then
selfSay("Hmph!")
closeShopWindow(focus)
removeFocus(focus)
end
end
end
lookAtFocus()
end 