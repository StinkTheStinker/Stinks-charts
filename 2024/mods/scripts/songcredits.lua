function onCreate()
	makeLuaText('credits', "Made by MoldyGangstaHero", 0, 300, 800);
		setTextSize('credits', 48)
		addLuaText('credits');
		setObjectCamera('credits', 'camHud')
	end

function onStepHit()
	if curStep == 1 then
		doTweenY('creditsY', 'credits', 350, 3, 'quartOut')
		runTimer('timer1', 4, 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timer1' then
		doTweenAlpha('creditsAlpha', 'credits', 0, 2, 'linear')	
	end
end