function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky_night', -600, -200);
	setScrollFactor('sky', 0.6, 0.6);
	
	makeLuaSprite('sky2', 'sky_sunset', -600, -200);
	setScrollFactor('sky2', 0.6, 0.6);
	setProperty('sky2.alpha', 0)

	makeLuaSprite('flatgrass', 'farm/gm_flatgrass', 350, 75);
	setScrollFactor('flatgrass', 0.65, 0.65);
	scaleObject('flatgrass', 0.34, 0.34);

	makeLuaSprite('hills', 'farm/orangey hills', -173, 100);
	setScrollFactor('hills', 0.65, 0.65);

	makeLuaSprite('farmhouse', 'farm/funfarmhouse', 100, 125);
	setScrollFactor('farmhouse', 0.7, 0.7);
	scaleObject('farmhouse', 0.9, 0.9);

	makeLuaSprite('grassland', 'farm/grass lands', -600, 500);

	makeLuaSprite('cornFence', 'farm/cornFence', -400, 200);

	makeLuaSprite('cornFence2', 'farm/cornFence2', 1100, 200);

	makeLuaSprite('cornbag', 'farm/cornbag', 1200, 550);

	makeLuaSprite('sign', 'farm/sign', 0, 350);

	makeLuaSprite('dark', 'blackscreen', -430, -300);
	scaleObject('dark', 12, 12);
	setScrollFactor('dark', 'camHud');
	setProperty('dark.alpha', 0.65)
	
	addLuaSprite('sky', false);
	addLuaSprite('sky2', false);
	addLuaSprite('flatgrass', false);
	addLuaSprite('hills', false);
	addLuaSprite('farmhouse', false);
	addLuaSprite('grassland', false);
	addLuaSprite('cornFence', false);
	addLuaSprite('cornFence2', false);
	addLuaSprite('cornbag', false);
	addLuaSprite('sign', false);
	addLuaSprite('dark', true);
	
end