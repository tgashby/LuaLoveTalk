function love.load()
    -- Load an image with newImage
    pig = love.graphics.newImage("pig.png")

    -- Load a music file for later
    music = love.audio.newSource("music.mp3")
end

function love.draw()
    -- Draw images created in load()
    love.graphics.draw(pig, 100, 100)

    -- Full verion
    -- love.graphics.draw( drawable, x, y, rotation, scale-x, scale-y, origin-x, origin-y, shear-x, shear-y )
    love.graphics.draw(pig, 500, 200, math.rad(90), 2, 1, 0, 0, 0.5, 1)

    -- Draw text
    love.graphics.print("I'm a pig!", 50, 50)
end

function love.keyreleased(key, unicode)
	if key == " " then
		-- Sadly you have to mix OO stuff with non-OO stuff sometimes
		if music:isStopped() or music:isPaused() then
			love.audio.play(music)
		else
			love.audio.pause(music)
		end
	else
		-- Silly Shenanigans you have to pull to get a sound to play over itself (or reasonably repeatedly)
		love.audio.newSource("laser.wav", "static"):play()
	end
end