
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

    doTweenY(dadTweenY, 'dad', 20-20*math.sin((currentBeat*0.1)*math.pi),0.001)
	
  end

end
