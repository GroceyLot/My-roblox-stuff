local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/GroceyUiLib.lua"))()
Lib:Initialize(Color3.new(0.847059, 0.239216, 1))
local Panel = Lib:Panel(100, "Panel", "Panel")
Panel:Toggle("Toggle", "Toggle", false, function(val)print(val)end)
Panel:Button("Button", "Button", function()end)
