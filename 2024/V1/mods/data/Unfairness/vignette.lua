function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('vignetteRed', 'vignetteRed', 0, 0)
	setProperty('vignetteRed.alpha', 0)
	addLuaSprite('vignetteRed', true)
	setObjectCamera('vignetteRed', 'camHUD')
end

function onStepHit()
	if curStep == 960 then
		doTweenAlpha('vignette', 'vignetteRed', 0.8, 1, 'quartOut')
	end

	if curStep == 1216 then
		doTweenAlpha('vignette', 'vignetteRed', 1, 0.5, 'quartOut')
	end

	if curStep == 1472 then
		doTweenAlpha('vignette', 'vignetteRed', 0, 2, 'quartOut')
	end

	if curStep == 1728 then
		doTweenAlpha('vignette', 'vignetteRed', 0.7, 2, 'quartOut')
	end

	if curStep == 1984 then
		doTweenAlpha('vignette', 'vignetteRed', 1, 0.5, 'quartOut')
	end

	if curStep == 2240 then
		doTweenAlpha('vignette', 'vignetteRed', 0, 0.01, 'quartOut')
	end

	if curStep == 2364 then
		doTweenAlpha('vignette', 'vignetteRed', 0.8, 1, 'quartOut')
	end

	if curStep == 2623 then
		doTweenAlpha('vignette', 'vignetteRed', 1, 0.5, 'quartOut')
	end

	if curStep == 2879 then
		doTweenAlpha('vignette', 'vignetteRed', 0, 1, 'quartOut')
	end
end