
function onCreatePost()
----------------------------------------------------------bg
makeLuaSprite('background','songHeadings/Gapple',0, -120)
addLuaSprite('background',true)
setObjectCamera('background', 'camHud')
setObjectOrder('background', 9)
scaleObject('background',1,1)
doTweenColor('yeah', 'background', '777777', 0.01)
----------------------------------------------------------credit
makeLuaText('credits1', "Composed by Sky!", 0, 0, -100);
setTextSize('credits1', 48)
addLuaText('credits1');
setObjectCamera('credits1', 'camHud')
setObjectOrder('credits1', 10)
----------------------------------------------------------icon
makeLuaSprite('icon','songCreators/none',0, -100)
addLuaSprite('icon',true)
setObjectCamera('icon', 'camHud')
screenCenter('icon', 'x')
setObjectOrder('icon', 10)
----------------------------------------------------------logo
makeLuaSprite('logo', 'logos/GoldenApple', 1150, -124)
addLuaSprite('logo', true)
setObjectCamera('logo', 'camHud')
scaleObject('logo',0.2,0.2)
setObjectOrder('logo', 10)
end

function onSongStart()
	doTweenY('moveHealthBar', 'healthBar', 150, 3, 'elasticOut')
	doTweenY('moveicon1', 'iconP1', 80, 3, 'elasticOut')
	doTweenY('moveicon2', 'iconP2', 80, 3, 'elasticOut')
	doTweenY('moveratingtext', 'scoreTxt', 187, 3, 'elasticOut')
	doTweenY('logoTweenIn', 'logo', 0, 3.3, 'elasticOut')
	doTweenY('iconTweenIn', 'icon', 0, 3, 'elasticOut')
	doTweenY('creditsTweenIn', 'credits1', 23, 3, 'elasticOut')
	doTweenY('bgTweenIn', 'background', -1, 3, 'elasticOut')
	doTweenY('logoTweenIn', 'logo', 0, 3, 'elasticOut')
	doTweenY('iconTweenIn', 'icon', 0, 3, 'elasticOut')
	runTimer('timer', 4, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timer' then
		doTweenY('creditsTweenOut', 'credits1', -80, 3.2, 'quartIn')
		doTweenY('iconTweenOut', 'icon', -120, 3.4, 'quartIn')	
		doTweenY('logoTweenOut', 'logo', -250, 4, 'quartIn')
		doTweenY('moveHealthBar', 'healthBar', 83.2, 5, 'quartInOut')
		doTweenY('moveicon1', 'iconP1', 8.2, 5, 'quartInOut')
		doTweenY('moveicon2', 'iconP2', 8.2, 5, 'quartInOut')
		doTweenY('moveratingtext', 'scoreTxt', 119.2, 5, 'quartInOut')
		doTweenY('bgTweenOut', 'background', -120, 3.3, 'quartIn')
	end
end
function onBeatHit()
	if curBeat %1 == 0 then
		setProperty('icon.angle', 25)
		doTweenAngle('iconThing', 'icon', 1, 1, 'quartOut')
	end
end
	