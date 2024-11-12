function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge(Phone)' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_phone'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'Alt Animation (Phone)' then
        triggerEvent('Play Animation', 'smash', 'dad')
    end
end