function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timer1' then
		doTweenColor('creditsColor', 'credits', 'DD0000', 0.2, 'quartOut')
	end
end