function onCreatePost()
	makeLuaSprite('Heading', 'songHeadings/gappleHeading', -600, 170)
	setObjectCamera('Heading', 'camHud')
	addLuaSprite('Heading', true)
	setObjectOrder('Heading', 8)

	makeLuaText('credits', 'Section composed by Sky!', 0, 1, 170);
	setTextSize('credits', 30)
	addLuaText('credits');
	setProperty('credits.x', -600)
	setObjectCamera('credits', 'camHud')
	setObjectOrder('credits', 10)
	scaleObject('icon', 0.605, 0.605)
end

function onSongStart()
	doTweenX('TweenInHeading', 'Heading', 0, 1, 'backOut')
	doTweenX('TweenInCredit', 'credits', 0, 1, 'backOut')
	runTimer('wait', 3)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'wait' then
		doTweenX('TweenOutHeading', 'Heading', -600, 1, 'backIn')
		doTweenX('TweenInCredit', 'credits',-600, 1, 'backIn')
	end
end