function onStepIn(cid, item, position, fromPosition)
	local trap = {x=121, y=244, z=5}

	doCreatureAddHealth(cid, -200)
	doSendMagicEffect(trap, CONST_ME_HITBYPOISON)
	doSendAnimatedText(trap, "200", TEXTCOLOR_RED)
	return 1
end