-- do you want, do you want, phone phone phone phone, EAEAEKHBGHBDSKJHBAKSJHBDGKJHSBDFKJGHBKJSDFHBGKJHBDSFKJHBGKJDHBFGKJHb


 function onUpdate(elapsed)    if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenY('opponentmove', 'dad', -100 - 150*math.sin((currentBeat+12*12)*math.pi), 2)

doTweenX('disruptor2', 'disruptor2.scale', 0 - 120*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end

	
