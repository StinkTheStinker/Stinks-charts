function onCreate()
	makeLuaSprite('Expunged/scaryBG','Expunged/scaryBG',-1700,-500)
	addGlitchEffect('Expunged/scaryBG', 2,5,0.2)
	makeLuaSprite('darkness','dark',-800,-500)
	makeLuaSprite('vignette','vignette',0,0)
	
	addLuaSprite('Expunged/scaryBG',false)
	scaleObject('Expunged/scaryBG',4,2.5)
	addLuaSprite('darkness',true)
	addLuaSprite('vignette',true)
	
	scaleObject('darkness',3,3)

	setScrollFactor('Expunged/scaryBG', 'camHud');
	setScrollFactor('darkness', 'camHud');
	setScrollFactor('vignette', 'camHud');
	setObjectCamera('vignette', 'camHud')
end
