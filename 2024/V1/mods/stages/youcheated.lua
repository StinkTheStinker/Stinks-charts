function onCreate()
-- sprites
	makeLuaSprite('Expunged/cheater','Expunged/cheater',-1750, -900)
	makeLuaSprite('Expunged/cheater2','Expunged/cheater2',-1750, -900)
	makeLuaSprite('Cheatingisland','Expunged/CheatingIslandThing',880, 760)
	makeLuaSprite('Expunged/scaryBG','Expunged/scaryBG',-800,-500)
	makeAnimatedLuaSprite('darkSkyAnimated','darkSkyAnimated',-600, -900)addAnimationByPrefix('darkSkyAnimated','dance','darkSkyAnimated',24,true)
	objectPlayAnimation('darkSkyAnimated','dance',false)
	setScrollFactor('darkSkyAnimated', 0, 0);
	setScrollFactor('Expunged/cheater', 'camHud');
	makeLuaSprite('Expunged/unfairIslandThing','Expunged/unfairIslandThing',880, 760)

	addGlitchEffect('Expunged/cheater', 1.5,4)
	addGlitchEffect('Expunged/cheater2', 1.5,4)
	addGlitchEffect('Expunged/scaryBG', -1.5,-4)

--settings
	addLuaSprite('Expunged/cheater',false)
	scaleObject('Expunged/cheater',2,2)
	addLuaSprite('Expunged/cheater2',false)
	scaleObject('Expunged/cheater2',2,2)
	addLuaSprite('Expunged/scaryBG',false)
	scaleObject('Expunged/scaryBG',3,3)
	addLuaSprite('darkSkyAnimated',false)
	scaleObject('darkSkyAnimated',2,2)
	addLuaSprite('Cheatingisland',false)
	scaleObject('Cheatingisland',1.6,1.6)
	setProperty('Cheatingisland.antialiasing', false)
	scaleObject('Expunged/unfairIslandThing',1.6,1.6)
	setProperty('Expunged/unfairIslandThing.antialiasing', false)
	setProperty('Expunged/unfairIslandThing.alpha', 0)
	setProperty('Expunged/cheater.antialiasing', false)
	setProperty('darkSkyAnimated.alpha', 0)
	setProperty('Expunged/scaryBG.alpha', 0)
	setProperty('Expunged/cheater2.alpha', 0)

-- non stage things
 	function onUpdate(elapsed)    if curStep == 0 then

        started = true

	    end

	songPos = getSongPosition()

	local currentBeat = (songPos/5000)*(curBpm/60)

	doTweenY('opponentmove', 'dad', -100 - 150*math.sin((currentBeat+12*12)*math.pi), 2)

	doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

	doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

	end

end
