beginning = "Hello"
ending = "World!"

print(beginning .. " " .. ending) -- the '..' operator concatenates strings, but if you have a lot of strings to smash together, use table.concat
print()
print(#beginning) -- The length operator works here too

quotes = 'Hello "World!"'
singleQuotes = "Hello 'World!'"

print(quotes)
print(singleQuotes)