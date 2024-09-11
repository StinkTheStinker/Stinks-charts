function onStepHit()
    health = getProperty('health')
    if getProperty('health') > 0.04 then
        setProperty('health', health- 0.002);
    end

	if curStep == 184 then
		setProperty('cameraSpeed', 0.2)
	end

	if curStep == 256 then
		setProperty('cameraSpeed', 3)
	end
end

function onCreate()
 makeLuaText('watermark', "ghost tapping is forced off, fuck you", 0, 20, 140);
     setTextSize('watermark', 16);
     addLuaText('watermark');

 makeLuaText('watermark2', "add to that, the arrows are more difficult. you unfair peice of shit", 0, 20, 160);
     setTextSize('watermark2', 16);
     addLuaText('watermark2');

     setProperty('dad.alpha', 0);
     setProperty('iconP2.alpha', 0)
 end
--[[
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'expunged-loop');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'expunged-end');
]]--
--thats broken :C
function onSongStart()
	setProperty('cameraSpeed', 0)
end

function onUpdate()
    if botPlay then
		-- setProperty('health', 0);
    end
end