function onCreatePost()
makeLuaSprite('vignette1','vignette',0, 0)
addLuaSprite('vignette1',true)
setObjectCamera('vignette1', 'camHud')
scaleObject('vignette1',1,1)
setProperty('vignette1.alpha', 0)

makeLuaSprite('vignette2','vignetteRed',0, 0)
addLuaSprite('vignette2',true)
setObjectCamera('vignette2', 'camHud')
scaleObject('vignette2',1,1)
setProperty('vignette2.alpha', 0)

makeLuaSprite('miss image','miss image',0, 0)
addLuaSprite('miss image',true)
setObjectCamera('miss image', 'camHud')
scaleObject('miss image',1,1)
setProperty('miss image.alpha', 0)
--[[
makeLuaText('comboText2', 'Combo:', 0, 1, -10);
setTextSize('comboText2', 30)
screenCenter('comboText2', 'x')
addLuaText('comboText2');
setObjectCamera('comboText2', 'camHud')
setObjectOrder('comboText2', 32)
setProperty('comboText2.alpha', 1)

makeLuaText('comboText', '' .. getProperty('combo') .. '', 0, 1, 20);
setTextSize('comboText', 30)
screenCenter('comboText', 'x')
addLuaText('comboText');
setObjectCamera('comboText', 'camHud')
setObjectOrder('comboText', 32)
setProperty('comboText.alpha', 1)
]]
--luaDebugMode = true;
end

function noteMissPress(direction)

	setProperty('vignette1.alpha', 0.7)
	doTweenZoom('zoom','camHud', 1.2, 1)
	doTweenAlpha('bye bye vignette', 'vignette1', 0, 3,'quartOut')
	triggerEvent('Screen Shake','0, 0','0.1, 0.0055')
	runTimer('MissTimer', 0.02, 1)
	setProperty('miss image.alpha', 0.34)
	doTweenAlpha('bye bye image', 'miss image', 0, 1,'quartOut')
	playSound('vine boom')

end
function noteMiss(id, noteData, noteType, isSustainNote)
		setProperty('gf.specialAnim', true)
		triggerEvent('Play Animation','sad','gf')
		setProperty('vignette1.alpha', 0.7)
		doTweenZoom('zoom','camHud', 1.2, 1)
		doTweenAlpha('bye bye vignette', 'vignette1', 0, 3,'quartOut')
		triggerEvent('Screen Shake','0, 0','0.1, 0.0055')
		runTimer('MissTimer', 0.02, 1)
		setProperty('miss image.alpha', 0.34)
		doTweenAlpha('bye bye image', 'miss image', 0, 1,'quartOut')
		playSound('vine boom')
end

function onUpdate()
	if getProperty('combo') >= 15 then
		doTweenAlpha('comboTextAlpha', 'comboText', 1, 1, 'linear')
	end
	if getProperty('combo') <= 14 then
		runTimer('dick', 2)
	end
end

function onTimerCompleted()
	if tag == 'dick' then
		doTweenAlpha('comboTextAlpha', 'comboText', 1, 1, 'linear')
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	getProperty('combo')
end