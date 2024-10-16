function onCreatePost()
	if songName == 'Cheating' or songName == 'Unfairness' or songName == 'Bot_Trot' then
		setProperty('EngineWatermark.y', 120)
		setProperty('EngineWatermark.x', 20)
	end
	if songName == 'Wireframe' or songName == 'Disability' or songName == 'Algebra_Diamond_Man_Section' then
		makeLuaText('songName', songName:gsub('-', ' '), 0, 3)
		setProperty('songName.y', screenHeight - getProperty 'songName.height')
		setProperty('songName.borderSize', 1.25)
		addLuaText 'songName'
		setProperty('EngineWatermark.alpha', 0)
	end	
end
