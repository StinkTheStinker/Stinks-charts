function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setProperty('vignette.alpha', 0)
	addLuaSprite('vignette', true)
	setObjectCamera('vignette', 'camHUD')
end

function onStepHit()
	if curStep == 2719 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0.5, 2, 'quartOut')
	end

	if curStep == 2976 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 1, 2, 'quartOut')
	end

	if curStep == 3232 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0, 1, 'quartOut')
	end
end