--noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
--above is just notes
--also, if you want to use this script im fine with it
HudAssets = {'healthBarBG','healthBar','scoreTxt','iconP1','iconP2','timeBar','timeBarBG','timeTxt'}
Index = 1
function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('i fucking hate', image, -500, -500)
	makeGraphic('i fucking hate', 3000, 3000, '000000')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	makeLuaSprite('i fucking hate-bg', image, -500, -500)
	makeGraphic('i fucking hate-bg', 3000, 3000, '000000')
	setProperty('i fucking hate-bg.alpha', 0)
	addLuaSprite('i fucking hate-bg', false)
	setObjectCamera('i fucking hate-bg', 'camGame')
end
function onCreatePost()
	noteTweenY('dadStrum', 0, -23450, 0.01, 'linear')
	noteTweenY('dadStrum1', 1, -23450, 0.01, 'linear')
	noteTweenY('dadStrum2', 2, -23450, 0.01, 'linear')
	noteTweenY('dadStrum3', 3, -23450, 0.01, 'linear')
end
function onStepHit()
	if curStep == 1 then -- notes fade out
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 256 then -- notes fade out
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 1472 then -- notes fade out
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 2.5, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 1728 then -- notes fade in
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 1782 then
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
	end
	
	if curStep == 1968 then
	end
	
	if curStep == 1024 then
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
	end
	
	if curStep == 2239 then
		noteTweenAlpha('bfStrum', 4, 0, 0.2, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 0.4, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 0.6, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 0.8, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 2367 then
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 2479 then
		noteTweenAlpha('bfStrum', 4, 1, 0.4, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.6, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.8, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
	end
	
	if curStep == 2488 then
		noteTweenAlpha('bfStrum', 4, 1, 0.4, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.6, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.8, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
	end
	 
	if curStep == 2879 then
		noteTweenAlpha('bfStrum', 4, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 5.83, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 6.33, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 6.83, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 3008 then
		doTweenAlpha('fade', 'i fucking hate-bg', 1, 9.14, 'linear')
		doTweenZoom('cam','camGame',0.65,10,'linear')
	end
end 