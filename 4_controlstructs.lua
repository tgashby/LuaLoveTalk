-- Control Structures!
-- Lua has all your favorites.
tag = "awesome"

if tag == "awesome" then -- if, elseif followed buy 'then', else isn't.... enjoy that.
    print("That kid's awesome!")
elseif tag == "lame" then -- Else-if is one word, if you make it two, you're gonna have a bad time
    print("Laaaaaame!")
else
	print("I guess he's just okay.")
end

local i = 1

-- While loops are surrounded by do-end
while i < 10 do
    print(i)
    i = i + 1 -- No ++, --, I always forget
end

-- do-while becomes repeat -> until
repeat
    print("I'll happen at least once!")
until i > 5

-- For loops come in multiple varieties!
local limit, incr = 10, 2
for j = 1, limit, incr do -- The classic with assignemnt, condition, step
    print(j)
end

mytable = {a = "a", b = "b", c = "c"}
myarray = {"a", "b", "c", tag = "tag"}

-- And two more specialized ones for dealing with tables.

-- pairs returns each key and value
print("pairs(mytable):")
for k,v in pairs(mytable) do
    print(k,v)
end

print("pairs(myarray):")
for k,v in pairs(myarray) do
    print(k,v)
end

-- ipairs returns each integer key, but not non-integer keys
print("ipairs(myarray):")
for ndx,v in ipairs(myarray) do
    print(ndx,v)
end