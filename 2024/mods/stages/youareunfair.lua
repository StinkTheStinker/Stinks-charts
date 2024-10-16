function onCreate()
	makeLuaSprite('scaryBG','Expunged/scaryBG',-1700,-500)
	makeLuaSprite('waveform','waveforms/Unfairness',1280,720)
	addGlitchEffect('scaryBG', 2.5,8)
	makeLuaSprite('darkness','dark',-800,-500)
	makeLuaSprite('vignette','vignette',0,0)
	
	addLuaSprite('scaryBG',false)
	addLuaSprite('waveform',false)
	scaleObject('scaryBG',4,2.5)
	addLuaSprite('darkness',true)
	addLuaSprite('vignette',true)
	setObjectOrder('vignette', 3)	
	scaleObject('darkness',3,3)
	scaleObject('waveform',8,8)
	screenCenter('waveform', 'y')
	setScrollFactor('scaryBG', 1,1);
	setScrollFactor('waveform', 0, 0);
	setScrollFactor('darkness', 'camHud');
	setScrollFactor('vignette', 'camHud');
	setObjectCamera('vignette', 'camHud')
	setObjectCamera('waveform', 'camHud')
end
