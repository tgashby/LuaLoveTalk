require("functions") -- require('filename') does file inclusion for using functions/code from other files. 
-- Notice that the file extension is ommited. There are other functions that do similar things but I pretty much always use 'require'

print("Woah, what just happened") -- 'require' calls execute code

Boring() -- Came from the file 'functions.lua'
FuncArg(function () print("I'm so anonymous.") end)

-- IOnlyWorkInThisFile() -- Error!