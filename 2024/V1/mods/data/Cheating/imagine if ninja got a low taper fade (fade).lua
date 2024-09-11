function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('i fucking hate', image, -500, -500)
	makeGraphic('i fucking hate', 3000, 3000, '000000')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	makeLuaSprite('i fucking hate-white', image, -500, -500)
	makeGraphic('i fucking hate-white', 3000, 3000, 'FFFFFF')
	setProperty('i fucking hate-white.alpha', 0)
	addLuaSprite('i fucking hate-white', true)
	setObjectCamera('i fucking hate-white', 'camGame')
end

function onBeatHit()
	if curBeat == 584 then
		doTweenAlpha('fade', 'i fucking hate', 1, 5.33, 'linear')
	end

	if curBeat == 672 then
		doTweenAlpha('fade', 'i fucking hate', 0, 2.66, 'quartIn')
	end
	
	if curBeat == 872 then
		doTweenAlpha('fade', 'i fucking hate', 1, 7, 'quartOut')
	end
end

function onStepHit()
	if curStep == 250 then
		doTweenAlpha('fade2', 'i fucking hate-white', 1, 0.48, 'linear')
	end
	if curStep == 256 then
		doTweenAlpha('fade2', 'i fucking hate-white', 0, 2, 'linear')
	end
end