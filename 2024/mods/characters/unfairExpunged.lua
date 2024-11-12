-- got this script from gamebanana, this is edited
-- https://gamebanana.com/questions/32055

local anchorpos = {};

local shake = 0;

local maxshake = 12

local transitionspeed = 0.2


function onUpdatePost()

	setProperty('iconP2.offset.x', math.random(-shake,shake))

	setProperty('iconP2.offset.y', math.random(-shake,shake))

end

function onCreatePost()

	for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')
        end
        
        for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture 
        end
end
end

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/500)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 140-20*math.sin((currentBeat*0.1)*math.pi),0.001)
	
  end
  	if getProperty('health') >= 1.6 then

		if shake < maxshake then

			shake = shake + transitionspeed

		end

	end

	if getProperty('health') <= 1.6 then

		if shake > 0 then

			shake = shake - transitionspeed

		end

	end
	if shake < 0 then

		shake = 0    -- had to do it because fsr it gives -3.19189119579733e-16 if goes under 0

	end
end
function onStepHit()
	health = getProperty(‘health’)
	if health >= 1.8 then
		triggerEvent('Change Character','dad','unfairExpunged2')
	end
end
function opponentNoteHit(id,data,type,sus)
    triggerEvent('Screen Shake','0.1, 0.004','0.01, 0.004')
 end


