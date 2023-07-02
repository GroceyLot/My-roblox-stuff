

-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()
-- Create Window
local Window = Library:AddWindow({
	title = {"Grocey", "Natural Disaster Survival"},
	theme = {
		Accent = Color3.fromRGB(85, 235, 186)
	},
	key = Enum.KeyCode.RightShift,
	default = true
})
local autowin = false
game.Workspace.ContentModel.Status:GetPropertyChangedSignal("Value"):Connect(function()
	if autowin and game.Workspace.ContentModel.Status.Value == "New Map" then
		while true do
			wait(1)
			if game.Workspace.ContentModel.Status.Value ~= "Survivers" and autowin then
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-280, 180, 340))
			else
				break
			end
		end
	end
end)
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
local a1 = a:AddToggle("AutoWin", {default = false}, function(bool)
	autowin = bool
end)
