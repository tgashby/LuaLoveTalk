-- functions are made with the word 'function' and continue until they reach the word 'end'
function Boring()
    print("Hello World!")
    local x = 1 + 2
    print(x)
end

-- Lua supports multiple return values
function MultiReturn()
    return "a", "b", 4
end

function IHaveArguments(a, b, c) -- Parameters, just like normal variables, take no type, just a name
    print(a, b, c)
end

function FuncArg(func) -- And just like other variables, they can take functions as parameters
    func()
end

Boring()
a, b, four = MultiReturn() -- Just assign as many variables to the function call as you expect
print(a, b, four)
a1, b1 = MultiReturn() -- Perfectly valid, 4 is "thrown away"
print(a1, b1)
a2, b2, c2, lolwhat, ohai = MultiReturn() -- Also valid, anything extra will just be given the value nil
print(a2, b2, c2, lolwhat, ohai)

IHaveArguments(a, b, four)
IHaveArguments(a1, b1) -- Also valid, c is given nil

hello = Boring

FuncArg(hello)

-- Functions are global by default which is often exactly what you wants, but you can make local functions
-- that stop other files from using them.
local function IOnlyWorkInThisFile()
    print("What a horrible function name...")
end

IOnlyWorkInThisFile() -- Totally fine here