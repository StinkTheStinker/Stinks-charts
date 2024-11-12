
function onCreatePost()
	doTweenZoom('fgdfgsdsdfg', 'camGame', 0.6, 0.01)
	doTweenZoom('fgdfgsdsdfg', 'camGame', 0.6, 0.01)
	setProperty('dad.x',-900)
	setProperty('cameraSpeed', 0)
	cameraFade('game', '000000', 0.01, true, false) -- fade in
end
function onSongStart()
	doTweenZoom('fgdfgsdsdfg', 'camGame', 1, 10.65)
	cameraFade('game', '000000', 10.65, true, true) -- fade in
end
function onUpdate()
	if curStep == 128 then
		setProperty('cameraSpeed', 1)
	end
	if curStep == 118 then
		doTweenX('dadX', 'dad', 100, 4, 'quartOut')
	end
end