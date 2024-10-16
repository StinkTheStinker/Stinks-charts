function onCreate()
-- sprites
	makeLuaSprite('Expunged/cheater','Expunged/cheater',-1750, -900)
	makeLuaSprite('Expunged/cheater2','Expunged/cheater2',-1750, -900)
	setScrollFactor('Expunged/cheater', 'camHud');
	setScrollFactor('Expunged/cheater2', 'camHud');
	
	addGlitchEffect('Expunged/cheater', 1,5)
	addGlitchEffect('Expunged/cheater2', 1.5,7)

--settings
	addLuaSprite('Expunged/cheater',false)
	scaleObject('Expunged/cheater',2,2)
	addLuaSprite('Expunged/cheater2',false)
	scaleObject('Expunged/cheater2',2,2)
	setProperty('Expunged/cheater2.alpha', 0)
	
end

