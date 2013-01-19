-- In Lua you don't declare types, they are figured out automatically.
iCanBeAnything = "hello" -- Strings
print(iCanBeAnything)

iCanBeAnything = 5 -- Numbers
print(iCanBeAnything)

iCanBeAnything = 1.9 -- Floating point numbers
print(iCanBeAnything)

iCanBeAnything = false -- Booleans
print(iCanBeAnything)

iCanBeAnything = {key = "value"} -- Tables, the powerhouse data structure
print(iCanBeAnything["key"]) -- Keys are made into strings by default
print(iCanBeAnything.key) -- values can also be accessed using table.key notation

iCanBeAnything = {42, 43, 44} -- Arrays (really just tables without "keys")
print(iCanBeAnything[1]) -- ** Lua arrays start at index 1!

iCanBeAnything = function () -- Even functions!
    print("I'm a function!")
end

iCanBeAnything()

iCanBeAnything = nil -- nil is the value meaning 'nothing', 'uninitialized', etc
print(iCanBeAnything)

-- Oh, and this is how you do comments.

--[[ Here's a 
multi-line comment,
It looks super weird... ]]