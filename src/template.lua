-- NOTE: This file is meant to be just a template/standard for other .lua files.
-- Don't delete/overwrite, just copy this file and write your stuff will do
-- You can delete the comments to add your own or make your .lua file look cleaner
-- Remember to do a #include ../src/fileName.lua once you're ready to include!

tempTable = {} -- At the start of every file, declare a table (as they'll act like a class)

-- ANOTHER NOTE: Function names must all be lowercase because of Pico-8 :/
function somethinginit()
    tempTable.x = 0 -- To assign a new variable, do a .variableName = ___
    tempTable.y = 0
end

function dosomething()
    tempTable.x += 1
    tempTable.y -= 1
end