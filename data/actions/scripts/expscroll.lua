-- [( Script created by Doidin for XTibia.com )] --

local exp = 10000 -- Quanto de experience o player irá ganhar?!
local exhaust = 60 -- Tempo para o player poder usar o item novamente! (tempo em segundos)
local text = "Congratulations, you gained "..exp.." points of experience."
local storage = 9811 -- Não mexa aqui.

function onUse(cid, item, fromPosition, itemEx, toPosition)
if (getPlayerStorageValue(cid, storage) <= os.time()) then
            doPlayerAddExp(cid, exp)
            doCreatureSay(cid, text, 19)
            doSendMagicEffect(getCreaturePosition(cid), 14)
            doRemoveItem(cid, item.uid, 1)
            setPlayerStorageValue(cid, storage, os.time()+exhaust)
        else
            doPlayerSendCancel(cid, "Sorry, you only can again use this item after "..exhaust.." seconds.")
        end
    return TRUE
end