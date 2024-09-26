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

	if curBeat == 616 then
		doTweenAlpha('fade', 'i fucking hate', 0.4, 19, 'linear')
		setProperty('Expunged/cheater3.alpha', 1)
	end
	
	if curBeat == 680 then
		doTweenAlpha('fade', 'i fucking hate', 0.2, 0.01, 'quartOut')
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

	if curStep == 2714 then
		doTweenAlpha('fade2', 'i fucking hate-white', 0.9, 0.49, 'linear')
	end
	
	if curStep == 2720 then
		doTweenAlpha('fade2', 'i fucking hate-white', 0, 2, 'linear')
	end	
end