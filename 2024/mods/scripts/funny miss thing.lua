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
end

function noteMissPress(direction)
	setProperty('vignette1.alpha', 1)
	doTweenAlpha('bye bye vignette', 'vignette1', 0, 3,'quartOut')
	setProperty('gf.specialAnim', true)
	triggerEvent('Play Animation','sad','gf')
	triggerEvent('Screen Shake','0, 0','0.1, 0.0055')
	doTweenColor('doodooshitfart','boyfriend', 'FF6666', 0.01,'quartOut')
	runTimer('MissTimer', 0.02, 1)
end
function noteMiss(id, noteData, noteType, isSustainNote)
	setProperty('gf.specialAnim', true)
	triggerEvent('Play Animation','sad','gf')
	setProperty('vignette1.alpha', 1)
	doTweenZoom('zoom','camHud', 1.2, 1)
	doTweenAlpha('bye bye vignette', 'vignette1', 0, 3,'quartOut')
	triggerEvent('Screen Shake','0, 0','0.1, 0.0055')
	doTweenColor('doodooshitfart','boyfriend', 'FF6666', 0.01,'quartOut')
	runTimer('MissTimer', 0.02, 1)
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'MissTimer' then
		doTweenColor('doodooshitfart','boyfriend', 'FFFFFF', 3,'quartOut')
	end
end
function onUpdate(elapsed) -- this is not working for some reason
	health = getProperty('health')
	if health == 1 then
		doTweenAlpha('e', 'vignette2', 0, 1, 'sineOut')
	end
	if health == 0.8 then
		doTweenAlpha('ee', 'vignette2', 0.2, 1, 'sineOut')
	end
	if health == 0.4 then
		doTweenAlpha('eee', 'vignette2', 0.4, 1, 'sineOut')
	end
	if health == 0.2 then
		doTweenAlpha('eeee', 'vignette2', 0.6, 1, 'sineOut')
	end
	if health == 0.1 then
		doTweenAlpha('eeeee', 'vignette2', 0.8, 1, 'sineOut')
	end
end
