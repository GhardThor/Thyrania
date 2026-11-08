local BoxId = 1739
local Ladder = 1386
local LadderPos = {x=435, y=243, z=5, stackpos=1}

function onAddItem(moveitem, tileitem, pos)
	if moveitem.itemid == BoxId then  	
		doCreateItem(Ladder, 1, LadderPos)
	end
end

function onRemoveItem(moveitem, tileitem, pos)
	if moveitem.itemid == BoxId then  	
		doRemoveItem(getThingfromPos({x=435, y=243, z=5, stackpos=1}).uid,1)
	end
end