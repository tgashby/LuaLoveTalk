x, y = 10, 9

maxVal = x > y and x or y -- Lua's equivalent to the ternary operator, shortcut for if-then-else
print(maxVal)

x, y = 2, 4
maxVal = x > y and x or y
print(maxVal)

function DefaultParams(a, b, c)
	a = a or "Def A" -- Lua uses the classic short-circuited or, if a is not nil, use it's value, other set it to "Def A"
	b = b or 42
	c = c or 3.14

	print(a, b, c)
end

DefaultParams("a", "b", "c")
DefaultParams(1, 2)
DefaultParams()

function VariableArgs(...)
	print(arg.n)
	for i, val in ipairs(arg) do
		print(i, val)
	end
end

VariableArgs("a", 1, 2, {hello = "hello", 1, 2})

-- metatables
-- libraries: os, math, debug, string, etc

-- http://www.lua.org/manual/5.1/