local noclip = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Noclip.lua"))()
-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()

-- Create Window
local Window = Library:AddWindow({
	title = {"Grocey", "Universal Script"},
	theme = {
		Accent = Color3.fromRGB(0, 255, 0)
	},
	key = Enum.KeyCode.M,
	default = true
})

-- Create Tab
local Scripts = Window:AddTab("Scripts", {default = true})
local Features = Window:AddTab("Features", {default = false})
local Settings = Window:AddTab("Settings", {default = false})


-- Create Section
local Scriptsec1 = Scripts:AddSection("Dex", {default = false})
local Scriptsec2 = Scripts:AddSection("InfiniteYield", {default = false})
local Scriptsec3 = Scripts:AddSection("Vynixius", {default = false})
local Scriptsec4 = Scripts:AddSection("MSDoors", {default = false})

-- Create Button
local Button = Scriptsec1:AddButton("Load", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

local Button2 = Scriptsec2:AddButton("Load", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Button3 = Scriptsec3:AddButton("Load", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua'))()
end)

local Button4 = Scriptsec4:AddButton("Load", function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))() 
end)

local settingssec = Settings:AddSection("Main", {default = true})


local Featsec1 = Features:AddSection("Movement", {default = false})
-- Create Slider
local Slider = Featsec1:AddSlider("Speed", 15, 100, 16, {default = false, flag = "Slider_Flag1", fireondrag = true, rounded = true}, function(val)
	game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = val
end)



-- Create Toggle
local Button5 = Featsec1:AddButton("Infinite Jump", function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Infinitejump.lua"),true))()
end)



