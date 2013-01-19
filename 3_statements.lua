-- By default, all variables declared are global, EVEN INSIDE FUNCTIONS

x = 10
y = 42
print("x: " .. x)
print("y: " .. y)

x, y = y, x -- All values are evaluated first, then assignments occur, making swapping variables super cool.
print("Swapped!")
print("x: " .. x)
print("y: " .. y)

-- Declaring non-global variables requires the 'local' keyword
local z = 100

function Global_VS_Local()
    -- print(z) -- Won't work!
    imGlobal = "Yay!"
    print(x, y) -- No problem here!
end

Global_VS_Local() -- Small subtlety, 'imGlobal' doesn't exist until the function is actually called, Lua is INTERPRETED, not compiled.

print(imGlobal) -- imGlobal now exists in the global namespace!
