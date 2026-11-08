--
function onUse(cid, item, frompos, item2, topos)
 
door = {x=724, y=1070, z=7}
door2 = {x=722, y=1070, z=7}
doorpos = {x =723, y =1070, z =7, stackpos = 253}
playerpos = getPlayerPosition(cid)

if item.uid ==2036 then
queststatus = getPlayerStorageValue(cid,2001)

				if playerpos.x == doorpos.x - 1 and playerpos.y == doorpos.y and queststatus == 1 then

					doTeleportThing(cid,door)

				elseif playerpos.y == doorpos.y and playerpos.x == doorpos.x + 1 and queststatus == 1 then

					doTeleportThing(cid,door2)

				elseif playerpos.x == doorpos.x + 1 and playerpos.y == doorpos.y - 1 and queststatus == 1 then

					doTeleportThing(cid,door2)

				elseif playerpos.x == doorpos.x - 1 and playerpos.y == doorpos.y - 1 and queststatus == 1 then

					doTeleportThing(cid,door)

				elseif playerpos.x == doorpos.x + 1 and playerpos.y == doorpos.y + 1 and queststatus == 1 then

					doTeleportThing(cid,door2)

				elseif playerpos.x == doorpos.x - 1 and playerpos.y == doorpos.y + 1 and queststatus == 1 then

					doTeleportThing(cid,door)
                        end

			else
					doPlayerSendTextMessage(cid, 22, "Você precisa da katana quest para passar por esta porta.")

			end

    return 1

end