--noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
--above is just notes
--also, if you want to use this script im fine with it
function onStepHit()
	if curStep == 128 then -- notes fade out
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 256 then -- notes fade in
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 999 then
		noteTweenAlpha('dadStrum', 0, 0, 0.2, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 0.4, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 0.6, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 0.8, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 0.4, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 0.6, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 0.8, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 1024 then
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 1952 then
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 6, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 6.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 7, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 7.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 2073 then
		noteTweenAlpha('dadStrum', 0, 1, 0.2, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 0.4, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 0.6, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 0.8, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 0.2, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.4, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.6, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 0.8, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 2336 then
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 5.83, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 6.33, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 6.83, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 2779 then
		noteTweenAlpha('bfStrum', 4, 1, 0.4, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.6, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.8, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
	end
end

