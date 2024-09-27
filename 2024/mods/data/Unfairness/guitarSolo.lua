function onStepHit()
	if curStep == 3008 then
		doTweenAlpha('bf', 'boyfriend', 0, 9.14)
		doTweenZoom('cam','camGame',0.5,10,'linear')
	end
end

function onBeatHit()
	if curBeat == 752 then
		doTweenAlpha('gf', 'gf', 0, 9.14)
	end
end
function onSectionHit()
	if curSection == 188 then
		doTweenAlpha('bg', 'Expunged/scaryBG', 0, 9.14, 'linear')
	end
end