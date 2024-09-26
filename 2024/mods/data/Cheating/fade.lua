function onCreate()
	makeLuaSprite('i fucking hate', image, -500, -500)
	makeGraphic('i fucking hate', 3000, 3000, '000000')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
end

function onStepHit()
	if curStep == 1956 then
		doTweenAlpha('bgfade1', 'Expunged/cheater', 0, 5.53)
		doTweenAlpha('fade', 'i fucking hate', 1, 5)
	end
	if curStep == 2060 then
		doTweenAlpha('bgfade2', 'Expunged/cheater2', 1, 1.33, 'quartOut')
		doTweenAlpha('fade', 'i fucking hate', 0, 4, 'quartOut')
	end
end