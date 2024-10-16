function onCreatePost()
	if songName == 'Unfairness' or songName == 'Cheating' or songName == 'Bot_Trot' then
		setPropertyFromClass('ClientPrefs', 'iconBounceType', 'Dave and Bambi')
	end
	if songName == 'Wireframe' then
		setPropertyFromClass('ClientPrefs', 'iconBounceType', 'Golden Apple')
	end
end
