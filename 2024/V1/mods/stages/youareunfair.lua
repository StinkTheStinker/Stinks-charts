function onCreate()
	makeLuaSprite('Expunged/scaryBG','Expunged/scaryBG',-1400,-1000)
	makeLuaSprite('island','Expunged/unfairIslandThing',800,665)
	addGlitchEffect('Expunged/scaryBG', 2, 5)
	makeLuaSprite('darkness','dark',-800,-500)

	addLuaSprite('Expunged/scaryBG',false)
	scaleObject('Expunged/scaryBG',4,4)
	addLuaSprite('island',false)
	scaleObject('island',1.6,1.6)
	addLuaSprite('darkness',true)
	scaleObject('darkness',3,3)

	setScrollFactor('darkness', 'camHud');
	setScrollFactor('Expunged/scaryBG', 'camHud');
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
