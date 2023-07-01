

-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()
local speed = 10
-- Create Window
local Window = Library:AddWindow({
	title = {"Grocey", "Garten of Banban"},
	theme = {
		Accent = Color3.fromRGB(125, 0, 20)
	},
	key = Enum.KeyCode.RightShift,
	default = true
})

local Features = Window:AddTab("Features", {default = true})
local Settings = Window:AddTab("Settings", {default = false})

local settingssec = Settings:AddSection("Main", {default = false})

-- Create Picker
local Picker = settingssec:AddPicker("Accent Colour", {color = Color3.fromRGB(85, 235, 186)}, function(color)
	Window:SetAccent(color)
end)

local Bind = settingssec:AddBind("Menu Bind", Enum.KeyCode.RightShift, {default = false, flag = "Bind_Flag"}, function(keycode)
	Window:SetKey(keycode)
end)

local Button18 = settingssec:AddButton("Unload", function()
	game.CoreGui["Vynixius UI Library"]:Destroy()
end)

local a = Features:AddSection("Game", {default = false})
local a1 = a:AddSlider("Speed", 10, 20, 10, {toggleable = false, default = false, flag = "Slider_Flag",  fireondrag = true, rounded = true}, function(val)
  game.Player.LocalPlayer.PlayerGui.MainGui.Stamina:Destroy()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
