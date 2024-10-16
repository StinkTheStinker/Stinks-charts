--noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
--above is just some quick notes
--also, if you want to use this script im fine with it
function onStepHit()
	if curStep == 128 then -- notes fade out
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 1, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 1, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 256 then -- notes fade in
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 1, 'linear')
		noteTweenAlpha('bfStrum', 4, 1,1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 999 then
		noteTweenAlpha('dadStrum', 0, 0, 0.2, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 0.2, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 0.2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 0.2, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 1024 then
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 1, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 1953 then
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 1, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 6, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 6, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 6, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 6, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 2073 then
		noteTweenAlpha('dadStrum', 0, 1, 0.2, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 0.2, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 0.2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 0.2, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 0.2, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.2, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 0.2, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 2336 then
		noteTweenAlpha('dadStrum', 0, 0, 5.33, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 5.33, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 5.33, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 5.33, 'linear')
		doTweenAlpha('fadeUi', 'healthBar', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi2', 'healthBarBG', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi3', 'iconP1', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi4', 'iconP2', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi5', 'scoreTxt', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi6', 'timeBarBG', 0, 5.33, 'linear')	
		doTweenAlpha('fadeUi7', 'timeBar', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi8', 'energyBarBG', 0, 5.33, 'linear')
		doTweenAlpha('fadeUi9', 'energyBar', 0, 5.33, 'linear')	
		doTweenAlpha('fadeUi10', 'energyTxt', 0, 5.33, 'linear')		
		doTweenAlpha('fadeUi10', 'timeTxt', 0, 5.33, 'linear')	
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 2592 then
		noteTweenAlpha('dadStrum', 0, 1, 10)
		noteTweenAlpha('dadStrum1', 1, 1, 10)
		noteTweenAlpha('dadStrum2', 2, 1, 10)
		noteTweenAlpha('dadStrum3', 3, 1, 10)
		noteTweenAlpha('bfStrum', 4, 1, 10)
		noteTweenAlpha('bfStrum1', 5, 1, 10)
		noteTweenAlpha('bfStrum2', 6, 1, 10)
		noteTweenAlpha('bfStrum3', 7, 1, 10)
	end
	if curStep == 2708 then
		noteTweenY('dadStrumY', 0, -500, 1, 'quartIn')
		noteTweenY('dadStrumY1', 1, -500, 1.1, 'quartIn')
		noteTweenY('dadStrumY2', 2, -500, 1.2, 'quartIn')
		noteTweenY('dadStrumY3', 3, -500, 1.3, 'quartIn')
	end
	if curStep == 2710 then
		noteTweenX('bfStrumX', 4, 415, 1, 'quartInOut')
		noteTweenX('bfStrumX1', 5, 525, 1.1, 'quartInOut')
		noteTweenX('bfStrumX2', 6, 635, 1.2, 'quartInOut')
		noteTweenX('bfStrumX3', 7, 745, 1.3, 'quartInOut')-- i know, its not a fade, who cares
	end
	if curStep == 3360 then
		noteTweenAlpha('bfStrum', 4, 0.5, 1, 'quartInOut')
		noteTweenAlpha('bfStrum1', 5, 0.5, 1, 'quartInOut')
		noteTweenAlpha('bfStrum2', 6, 0.5, 1, 'quartInOut')
		noteTweenAlpha('bfStrum3', 7, 0.5, 1, 'quartInOut')
	end
	if curStep == 3488 then
		noteTweenAlpha('bfStrum', 4, 0, 5.33)
		noteTweenAlpha('bfStrum1', 5, 0, 5.33)
		noteTweenAlpha('bfStrum2', 6, 0, 5.33)
		noteTweenAlpha('bfStrum3', 7, 0, 5.33)
	end
end

