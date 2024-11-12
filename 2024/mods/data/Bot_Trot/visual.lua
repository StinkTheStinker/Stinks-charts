function onStepHit()
	if curStep == 1843 then
		doTweenAlpha('bye gf', 'gf', 0, 43.24, 'linear')
		doTweenAlpha('bye opponent', 'dad', 0, 43.24, 'linear')
		doTweenAlpha('bye bg4', 'bedroom/tv', 0, 43.24, 'linear')
		doTweenAlpha('bye bg3', 'bedroom/bed', 0, 43.24, 'linear')
		doTweenAlpha('bye bg2', 'bedroom/bg', 0, 43.24, 'linear')
		doTweenAlpha('bye bg', 'bedroom/sky', 0, 43.24, 'linear')
		doTweenZoom('thingythingthing', 'camHUD', 1.1, 43.26, 'linear')
	end

	if curStep == 900 or curStep == 384 then
		doTweenZoom('tgegrerg', 'camGame', 0.88, 16.29, 'linear')
	end

	if curStep == 1844 then
		doTweenAlpha('bye tristan', 'Tristan2', 0, 43.24, 'linear')
	end
	if curStep == 777 or curStep == 800 or curStep == 824 or curStep == 857 or curStep == 857 or curStep == 872 or curStep == 824 or curStep == 857 then
		cameraSetTarget('bf')
	end
	if curStep == 841 or curStep == 864 or curStep == 880 then
		cameraSetTarget('dad')
	end
	if curStep == 2163 then
		doTweenAlpha('fadeUi', 'healthBar', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi2', 'healthBarBG', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi3', 'iconP1', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi4', 'iconP2', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi5', 'scoreTxt', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi8', 'energyBarBG', 0, 0.01, 'linear')
		doTweenAlpha('fadeUi9', 'energyBar', 0, 0.01, 'linear')	
		doTweenAlpha('fadeUi10', 'energyTxt', 0, 0.01, 'linear')		
		doTweenAlpha('fadeUi10', 'timeTxt', 0, 0.01, 'linear')	
	end
end