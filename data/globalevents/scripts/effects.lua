local text = {
	[1] = {pos = {120,243,5}, text = {"M!37ery"}},
	[2] = {pos = {667,732,7}, text = {"Gratz"}},
	[3] = {pos = {668,732,7}, text = {"Gratz"}},
	[4] = {pos = {837,981,8}, text = {"Exit"}},
	[5] = {pos = {709,831,8}, text = {"Gratz"}}
}

local effects = {
	[1] = {pos = {120,243,5}, effect = {18}},
	[2] = {pos = {667,732,7}, effect = {19}},
	[3] = {pos = {668,732,7}, effect = {21}}
}

function onThink(interval, lastExecution)
for _, area in pairs(text) do
doSendAnimatedText({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.text[1], math.random(01,255))
end
for _, area in pairs(effects) do
doSendMagicEffect({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.effect[1])
end
return TRUE
end 