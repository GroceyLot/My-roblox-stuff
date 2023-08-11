
local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
local Lib = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/DoorsLib.lua"))()

local Window = Lib:Window("PL", "Grocey - Prison Life")

local Player = Window:Section("PLR", "Player")
local Combat = Window:Section("CBT", "Combat")
local World = Window:Section("WOD", "World")


World:Toggle("Remove Fences", "RF", false, function(val)
    pcall(function()
        if val then 
            game:GetService("Workspace")["Prison_Fences"].Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage["Prison_Fences"].Parent = game.Workspace
        end
    end)
end)
World:Toggle("Remove Doors", "RD", false, function(val)
    pcall(function()
        if val then 
            game:GetService("Workspace")["Doors"].Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage["Doors"].Parent = game.Workspace
        end
    end)
end)
Player:FinishSize()
Combat:FinishSize()
World:FinishSize()

