-- Typical LOVE Functions you'll use, a few other also exist

function love.load()
    -- Load everything you need!
end

function love.update(dt)
    -- Called as often as possible
    -- dt is the time, in seconds, since update was last called
end

function love.draw()
    -- Called every frame
    -- Draw all your entities!
end

function love.mousepressed(x, y, button)
    -- Called whenever the mouse is pressed
    -- x,y - the position of the mouse on the screen, in screen coords
    -- button - 'l', 'r', 'm', 'wd' (wheel down), 'wu' (wheel up), 'x1' (button 4),
    -- 'x2' (button 5)
end

function love.mousereleased(x, y, button)
    -- Called when the mouse is released
    -- Same parameters as mousepressed
end

function love.keypressed(key, unicode)
    -- Called when a key is pressed
    -- key - 'a', 'b', etc, list available at https://love2d.org/wiki/KeyConstant
    -- unicode - the unicode value of the key pressed
end

function love.keyreleased(key, unicode)
    -- I think you get it by now
end

function love.focus(f)
    -- Called whenever the user clicks on or off the LOVE window
    -- f - boolean of whether focus gained or lost
    if f then
        print("LOVE Window now in focus!")
    else
        print("LOVE Window lost focus :-(")
    end
end

function love.quit()
    -- Called right before the LOVE application exits
end

-- Love's many modules:
--[[
love.audio          Provides an interface to create noise with the user's speakers.
love.event          Manages events, like keypresses.
love.filesystem     Provides an interface to the user's filesystem.
love.font           Allows you to work with fonts.
love.graphics       Drawing of shapes and images, management of screen geometry.
love.image          Provides an interface to decode encoded image data.
love.joystick       Provides an interface to the user's joystick.
love.keyboard       Provides an interface to the user's keyboard.
love.mouse          Provides an interface to the user's mouse.
love.physics        Can simulate 2D rigid body physics in a realistic manner.
love.sound          This module is responsible for decoding sound files.
love.thread         Allows you to work with threads.
love.timer          Provides an interface to your system's clock.
]]

-- Running Love Games
-- Love games are packed into folders with a .love extension.
--  But really they are just .zip folders that have been renamed! Super simple.

-- There are ways of bundling the .love folder and the love executable together
-- into one package but I'm not going to talk about that. It's detailed on the wiki :-)

-- All Love games must have a main.lua, that's it.
-- More customizations can be done in a conf.lua file.