function onUpdate(elapsed)
    if songName ==  'Cheating' then
		if curStep == 566 or curStep == 1536 or curStep == 1599 or curStep == 2760 or curStep == 2752 or curStep ==	744 or curStep == 1167 or curStep == 1171 then
			addBlockedGlitchEffect('camGame',2560,1,1,true)
			addBlockedGlitchEffect('camHud',2560,1,1,true)
		end
		if curStep == 576 or curStep == 1568 or curStep == 1631 or curStep == 2762 or curStep == 2754 or curStep ==	768 or curStep == 1170 or curStep == 1174 then
			clearEffects('camGame')
			clearEffects('camHud')
		end
	end
	if songName ==  'Unfairness' then
		if curStep == 2364 then
			addBlockedGlitchEffect('camGame',2560,1,1,true)
			addBlockedGlitchEffect('camHud',2560,1,1,true)
		end
		if curStep == 2367 then
			clearEffects('camGame')
			clearEffects('camHud')
		end
	end
end
