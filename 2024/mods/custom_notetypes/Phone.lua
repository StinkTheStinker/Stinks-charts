function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phone' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_phone');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Phone' then
        triggerEvent('Play Animation', 'smash', 'dad')
	end
end