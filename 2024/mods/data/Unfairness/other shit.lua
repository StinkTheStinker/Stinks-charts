function onStepHit()
    health = getProperty('health')
    if getProperty('health') > 0.04 then
        setProperty('health', health- 0.01);
    end

	if curStep == 256 then
		setProperty('cameraSpeed', 1)
		doTweenColor('dad', 'dad', '878787', 0.01)
	end
end

function onCreate()
	makeLuaText('watermark', "Ghost tapping is forced off! Fuck you!", 0, 4, 695);
		setTextSize('watermark', 16);
		addLuaText('watermark');

		setProperty('dad.alpha', 0);
		setProperty('iconP2.alpha', 0)
--[[
		setProperty('strumLineNotes.cameras', 'camGame')
		setProperty('sustainNotes.cameras', 'camGame')
		setProperty('notes.cameras', 'camGame')
		setProperty('sustainNotes.cameras', 'camGame')
]]-- this is not working correctly
	end



function onSongStart()
	setProperty('cameraSpeed', 0)
end

function onUpdate()
    if botPlay then
		-- setProperty('health', 0);
    end
end