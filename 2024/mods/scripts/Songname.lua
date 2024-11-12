function onCreatePost()
	thing = getProperty('EngineWatermark.y')
	--debugPrint('' .. thing .. '')
	if songName == 'Cheating' or songName == 'Unfairness' then
		setProperty('EngineWatermark.y', 675)
	end
	if songName == 'Bot_Trot' or songName == 'Splitathon' then
		-- filler
	end
	if songName == 'Wireframe' or songName == 'Disability' or songName == 'Algebra_Diamond_Man_Section' then
		makeLuaText('songName', songName:gsub('-', ' '), 0, 3)
		setProperty('songName.y', screenHeight - getProperty 'songName.height')
		setProperty('songName.borderSize', 1.25)
		addLuaText 'songName'
		setProperty('EngineWatermark.alpha', 0)
	end	
end
