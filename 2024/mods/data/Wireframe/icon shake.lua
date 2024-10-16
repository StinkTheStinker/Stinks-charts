-- got this script from gamebanana, this is edited
-- https://gamebanana.com/questions/32055

local anchorpos = {};

local shake = 0;

local maxshake = 7

local transitionspeed = 0.2


function onUpdatePost()

	setProperty('iconP2.offset.x', math.random(-shake,shake))

	setProperty('iconP2.offset.y', math.random(-shake,shake))

end



function onUpdate()

	if getProperty('health') >= 1.6 then

		if shake < maxshake then

			shake = shake + transitionspeed

		end

	end

	if getProperty('health') <= 1.6 then

		if shake > 0 then

			shake = shake - transitionspeed

		end

	end
	if shake < 0 then

		shake = 0    -- had to do it because fsr it gives -3.19189119579733e-16 if goes under 0

	end

end