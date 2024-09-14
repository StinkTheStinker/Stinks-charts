function onCreate()
	makeLuaSprite('bedroom/sky','bedroom/sky',100,150)
	makeLuaSprite('bedroom/bg','bedroom/bg',-350,-350)
	makeLuaSprite('bedroom/bed','bedroom/bed',1100,400)
	makeLuaSprite('bedroom/tv','bedroom/tv',-500,400)
--------------------------------------------------------
	makeAnimatedLuaSprite('Tristan', 'bedroom/TristanSitting', 1300,300); 
	addAnimationByPrefix('Tristan', 'daytime', 'daytime', 24, true);
	makeAnimatedLuaSprite('Tristan2', 'bedroom/TristanSitting', 1300,300); 
	addAnimationByPrefix('Tristan2', 'nighttime', 'nighttime', 24, true);
--------------------------------------------------------	
	addLuaSprite('bedroom/sky',false)
	addLuaSprite('bedroom/bg',false)
	addLuaSprite('bedroom/bed',false)
	addLuaSprite('bedroom/tv',true)
	addLuaSprite('Tristan',true)
	addLuaSprite('Tristan2',true)
	setProperty('Tristan.alpha', 0)
	setProperty('Tristan2.alpha', 0)
--------------------------------------------------------
	setScrollFactor('bedroom/sky', '1.1', "1.1");
	scaleObject('bedroom/sky',0.8,0.8)
	setScrollFactor('bedroom/bg', '1','1');
	setScrollFactor('bedroom/bed', '1','1')
	setScrollFactor('bedroom/tv', '1','1');
	setScrollFactor('Tristan', '1','1');
	setScrollFactor('Tristan2', '1','1');
end

-- i just do random orders, dont know why
-- from stinko