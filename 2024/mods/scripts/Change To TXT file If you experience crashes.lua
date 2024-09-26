function onUpdate()
    if songName ==  'Cheating' then
		if curStep == 566 or curStep == 1536 or curStep == 1599 or curStep == 2760 or curStep == 2752 then
			addBlockedGlitchEffect('camGame',1280,1,1,true)
			addBlockedGlitchEffect('camHud',1280,1,1,true)
		end
		if curStep == 576 or curStep == 1568 or curStep == 1631 or curStep == 2762 or curStep == 2754 then
			clearEffects('camGame')
			clearEffects('camHud')
		end
	end
	if songName ==  'Unfairness' then
		if curStep == 2364 then
			addBlockedGlitchEffect('camGame',1280,1,1,true)
			addBlockedGlitchEffect('camHud',1280,1,1,true)
		end
		if curStep == 2367 then
			clearEffects('camGame')
			clearEffects('camHud')
		end
	end
end
