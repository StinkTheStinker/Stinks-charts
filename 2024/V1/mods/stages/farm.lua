function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -200, 100);
	setScrollFactor('sky', 1.2, 1.2);
	scaleObject('sky', 1, 1);
	addGlitchEffect('sky', 1, 4)

	makeLuaSprite('farm/gm_flatgrass', 'farm/gm_flatgrass', 238, 0);
	setScrollFactor('farm/gm_flatgrass', 0.6, 0.6);
	scaleObject('farm/gm_flatgrass', 0.4, 0.4);

	makeLuaSprite('farm/orangey hills', 'farm/orangey hills', -63, 129);
	setScrollFactor('farm/orangey hills', 0.8, 0.8);
	scaleObject('farm/gm_flatgrass', 0.8, 0.8);

	makeLuaSprite('farm/funfarmhouse', 'farm/funfarmhouse', 86, 189);
	setScrollFactor('farm/funfarmhouse', 0.9, 0.9);

	makeLuaSprite('farm/grass lands', 'farm/grass lands', -693, 501);
	setScrollFactor('farm/grass lands', 1, 1);

	makeLuaSprite('farm/cornFence', 'farm/cornFence', -482, 94);
	setScrollFactor('farm/cornFence', 1, 1);

	makeLuaSprite('farm/cornFence2', 'farm/cornFence2', 1048, 107);
	setScrollFactor('farm/cornFence2', 1, 1);

	makeLuaSprite('farm/cornbag', 'farm/cornbag', 1166, 448);
	setScrollFactor('farm/cornbag', 1, 1);

	makeLuaSprite('farm/sign', 'farm/sign', 283, 226);
	setScrollFactor('farm/sign', 1, 1);

	addLuaSprite('sky', false);
	addLuaSprite('farm/gm_flatgrass', false);
	addLuaSprite('farm/orangey hills', false);
	addLuaSprite('farm/funfarmhouse', false);
	addLuaSprite('farm/grass lands', false);
	addLuaSprite('farm/cornFence', false);
	addLuaSprite('farm/cornFence2', false);
	addLuaSprite('farm/cornbag', false);
	addLuaSprite('farm/sign', false);

end