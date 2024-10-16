function onCreate() -- this took over 2 days to finish this lua file
	makeLuaSprite('fadebg', image, -500, -500)
	makeGraphic('fadebg', 30000, 30000, '000000')
	setProperty('fadebg.alpha', 1)
	addLuaSprite('fadebg', false)
	setObjectCamera('fadewhite', 'camGame')
	makeLuaSprite('fadewhitee', image, -500, -500)
	makeGraphic('fadewhitee', 30000, 30000, 'FFFFFF')
	setProperty('fadewhitee.alpha', 0.8)
	addLuaSprite('fadewhitee', true)
	setObjectCamera('fadewhitee', 'camGame')
	doTweenAlpha('bf', 'boyfriend', 0, 0.01)
	doTweenAlpha('gf', 'gf', 0, 0.01)
	doTweenZoom('camZoom', 'camGame', 1, 0.01)
end

function onSongStart()
		doTweenAlpha('bf', 'boyfriend', 1, 0.01)
		doTweenAlpha('gf', 'gf', 1, 0.01)
		doTweenZoom('camZoom', 'camGame', 0.7, 14)
end
function onStepHit()
	if curStep == 192 then
		doTweenAlpha('dad', 'dad', 1, 4)
	end
	if curStep == 240 then
		doTweenAlpha('fadebg', 'fadebg', 0.7, 1, 'quartIn')
		doTweenAlpha('fadewhite', 'fadewhitee', 0.4, 1, 'quartIn')
	end
	if curStep == 256 then
		doTweenAlpha('fadebg', 'fadebg', 0, 0.01)
		doTweenAlpha('fadewhite', 'fadewhitee', 0, 0.01)
	end
end