function onCreate()
    makeAnimatedLuaSprite('redTunnel', 'redtunnelperspective', -810, -1300)
    addAnimationByPrefix('redTunnel', 'idle', 'redtunnelperspective idle0', 24, true)
    objectPlayAnimation('redTunnel', 'idle', true)
	setScrollFactor('redTunnel', 1,1);
	scaleObject('redTunnel',4.8,4.8)
    addLuaSprite('redTunnel', false)
	setObjectOrder('dad', 9)
	makeLuaSprite('scaryBG','Expunged/scaryBG',-1800, -550)
	addGlitchEffect('scaryBG', 2.5,10)
	addLuaSprite('scaryBG',false)
	scaleObject('scaryBG',4,2.5)
	setScrollFactor('scaryBG', 1,1);
	setProperty('scaryBG.alpha',0)
end