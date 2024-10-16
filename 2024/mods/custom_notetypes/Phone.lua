function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phone' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_phone');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end
end

