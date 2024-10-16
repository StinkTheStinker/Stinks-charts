function onStepHit()
	if curStep == 824 then
		doTweenAlpha('redTunnelAlpha', 'redTunnel', 0.4, 0.5, 'quartOut')
		doTweenColor('dadColor', 'dad', '666666', 0.5, 'quartOut')
		doTweenColor('bfColor', 'boyfriend', '666666', 0.5, 'quartOut')
	end
	if curStep == 832 then
		doTweenAlpha('scaryBGAlpha', 'scaryBG', 0.4, 0.5, 'quartOut')
		doTweenColor('dadColor', 'dad', 'CC8888', 0.01, 'sineOut')
		doTweenColor('bfColor', 'boyfriend', 'CC7777', 0.01, 'sineOut')
	end
	if curStep == 1088 then
		doTweenAlpha('redTunnelAlpha', 'redTunnel', 1, 0.01, 'quartOut')
		setProperty('scaryBG.alpha',0)
		doTweenColor('dadColor', 'dad', 'FFFFFF', 0.01, 'sineOut')
		doTweenColor('bfColor', 'boyfriend', 'FFFFFF', 0.01, 'sineOut')
	end
end

function onUpdate()
	health = getProperty('health')
	if health >= 1.7 then
		doTweenX('iconShake1', 'iconP2', 5-5*math.sin((currentBeat*0.1)*math.pi),0.001)	
		end
	end
