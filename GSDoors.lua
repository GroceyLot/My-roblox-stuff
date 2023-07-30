local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local esp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua"))()
local vs = {ws = 15,
	des = false,
	kes = false,
	ies = false,
	ees = false,
	st = false,
	nso = false,
	it = false,
	ne = false,
	af = false,
	pa = false,
	no = false,
	hbw = false,
	arc = false}
local fbd = {}


local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
function toggle(toggle) 
	toggle:SetAttribute("v", not toggle:GetAttribute("v"))
	if toggle:GetAttribute("v") then
		Utils:TweenPos(toggle, TweenInfo.new(0.5,Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), toggle.Position, UDim2.new(0.76, toggle.Position.X.Offset, toggle.Position.Y.Scale, toggle.Position.Y.Offset)) 
	else
		Utils:TweenPos(toggle, TweenInfo.new(0.5,Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), toggle.Position, UDim2.new(0.24, toggle.Position.X.Offset, toggle.Position.Y.Scale, toggle.Position.Y.Offset)) 
	end
end
function contoggle(toggl, val)
	toggl:SetAttribute("v", false)
	toggl:GetAttributeChangedSignal("v"):Connect(function()
		vs[val] = toggl:GetAttribute("v")
		print(toggl:GetAttribute("v"))
	end)
	toggl.MouseButton1Click:Connect(function()
		toggle(toggl)
	end)
end
--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Top = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Player = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Speed = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local InstantPrompts = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local Die = Instance.new("TextButton")
local UICorner2 = Instance.new("UICorner")
local Entities = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local AntiEntity = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Notify = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local AutoHeartBeat = Instance.new("TextLabel")
local Frame_5 = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local AutoGoUpFigure = Instance.new("TextLabel")
local Frame_6 = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local AutoRushCloset = Instance.new("TextLabel")
local Frame_7 = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local TextButton_6 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local Fullbright = Instance.new("TextLabel")
local Frame_8 = Instance.new("Frame")
local _2 = Instance.new("UICorner")
local TextButton_7 = Instance.new("TextButton")
local _2_2 = Instance.new("UICorner")
local ESP = Instance.new("Frame")
local UICorner2_2 = Instance.new("UICorner")
local Door = Instance.new("TextLabel")
local Frame_9 = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local TextButton_8 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local _2_3 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local _2_4 = Instance.new("UICorner")
local KeySwitchBookBreaker = Instance.new("TextLabel")
local Frame_10 = Instance.new("Frame")
local _2_5 = Instance.new("UICorner")
local TextButton_9 = Instance.new("TextButton")
local _2_6 = Instance.new("UICorner")
local GoldItems = Instance.new("TextLabel")
local Frame_11 = Instance.new("Frame")
local _2_7 = Instance.new("UICorner")
local TextButton_10 = Instance.new("TextButton")
local _2_8 = Instance.new("UICorner")
local Entities_2 = Instance.new("TextLabel")
local Frame_12 = Instance.new("Frame")
local _2_9 = Instance.new("UICorner")
local TextButton_11 = Instance.new("TextButton")
local _2_10 = Instance.new("UICorner")
local World = Instance.new("Frame")
local UICorner2_3 = Instance.new("UICorner")
local RemoveGenralOb = Instance.new("TextLabel")
local Frame_13 = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local TextButton_12 = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local _2_11 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local _2_12 = Instance.new("UICorner")
local PickupAura = Instance.new("TextLabel")
local Frame_14 = Instance.new("Frame")
local _2_13 = Instance.new("UICorner")
local TextButton_13 = Instance.new("TextButton")
local _2_14 = Instance.new("UICorner")
local NoSeekOb = Instance.new("TextLabel")
local Frame_15 = Instance.new("Frame")
local _2_15 = Instance.new("UICorner")
local TextButton_14 = Instance.new("TextButton")
local _2_16 = Instance.new("UICorner")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")



-- Properties


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.113725, 0.0666667, 0.0627451)
Frame.BackgroundTransparency = 0.10000000149011612
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.35, 0, 0.15, 0)
Frame.Size = UDim2.new(0.3, 0, 0.7, 0)

local UserInputService = game:GetService("UserInputService")

-- Function to be executed when the keybind is triggered
local function onShiftKeyPress()
	ScreenGui.Enabled = not ScreenGui.Enabled
end

-- Bind the key press event
UserInputService.InputBegan:Connect(function(input, isProcessed)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
			onShiftKeyPress()
		end
	end
end)


UIStroke.Parent = Frame
UIStroke.Color = Color3.fromRGB(255, 222, 189)
UIStroke.Thickness = 3
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.Parent = Frame

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.BorderColor3 = Color3.new(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(-1.50481156e-07, 0, -1.74665633e-08, 0)
Top.Size = UDim2.new(1.00000024, 0, 0.16383639, 0)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0271204598, 0, -1.06609782e-07, 0)
TextLabel.Size = UDim2.new(0.786982298, 0, 1.00000012, 0)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "GSDoors"
TextLabel.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.new(0.113725, 0.0666667, 0.0627451)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.49999997, 0, 0.572877347, 0)
ScrollingFrame.Size = UDim2.new(0.949999988, 0, 0.818081737, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

Player.Name = "Player"
Player.Parent = ScrollingFrame
Player.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
Player.BackgroundTransparency = 0.5
Player.BorderColor3 = Color3.new(0, 0, 0)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(-7.92006034e-08, 0, -4.27012665e-08, 0)
Player.Size = UDim2.new(0.959999979, 0, 0.699999988, 0)

UICorner_2.Parent = Player

Speed.Name = "Speed"
Speed.Parent = Player
Speed.AnchorPoint = Vector2.new(0.5, 0.5)
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.BackgroundTransparency = 1
Speed.BorderColor3 = Color3.new(0, 0, 0)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.510813534, 0, 0.37499994, 0)
Speed.Size = UDim2.new(0.928372979, 0, 0.200000003, 0)
Speed.Font = Enum.Font.Oswald
Speed.Text = "Speed multiplier"
Speed.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true
Speed.TextXAlignment = Enum.TextXAlignment.Left

TextBox.Parent = Speed
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
TextBox.BackgroundTransparency = 0.550000011920929
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.839773953, 0, 0.500000358, 0)
TextBox.Size = UDim2.new(0.220452294, 0, 0.800000012, 0)
TextBox.Font = Enum.Font.Oswald
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.Text = "0"
TextBox.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox:GetPropertyChangedSignal("ContentText"):Connect(function()
	if tonumber(TextBox.ContentText) then
		vs["ws"] = tonumber(TextBox.ContentText)
	else
		TextBox.Text = "0"
	end
end)

UICorner_3.Parent = TextBox

InstantPrompts.Name = "InstantPrompts"
InstantPrompts.Parent = Player
InstantPrompts.AnchorPoint = Vector2.new(0.5, 0.5)
InstantPrompts.BackgroundColor3 = Color3.new(1, 1, 1)
InstantPrompts.BackgroundTransparency = 1
InstantPrompts.BorderColor3 = Color3.new(0, 0, 0)
InstantPrompts.BorderSizePixel = 0
InstantPrompts.Position = UDim2.new(0.510999978, 0, 0.600000024, 0)
InstantPrompts.Size = UDim2.new(0.928372979, 0, 0.200000003, 0)
InstantPrompts.Font = Enum.Font.Oswald
InstantPrompts.Text = "No prompt hold"
InstantPrompts.TextColor3 = Color3.new(1, 0.866667, 0.737255)
InstantPrompts.TextScaled = true
InstantPrompts.TextSize = 14
InstantPrompts.TextWrapped = true
InstantPrompts.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = InstantPrompts
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_2.BackgroundTransparency = 0.550000011920929
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_2.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_4.Parent = Frame_2
UICorner_4.CornerRadius = UDim.new(0, 10000)

TextButton.Parent = Frame_2
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
contoggle(TextButton, "it")

UICorner_5.Parent = TextButton
UICorner_5.CornerRadius = UDim.new(0, 10000)

TextLabel_2.Parent = Player
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
TextLabel_2.BackgroundTransparency = 0.75
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.150000006, 0)
TextLabel_2.Size = UDim2.new(0.949999988, 0, 0.200000003, 0)
TextLabel_2.Font = Enum.Font.Oswald
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_2.TextSize = 1
TextLabel_2.TextWrapped = true

UICorner_6.Parent = TextLabel_2

TextLabel_3.Parent = TextLabel_2
TextLabel_3.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0227653123, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.977234662, 0, 1, 0)
TextLabel_3.Font = Enum.Font.Oswald
TextLabel_3.Text = "Player"
TextLabel_3.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

UICorner_7.Parent = TextLabel_3

Die.Name = "Die"
Die.Parent = Player
Die.AnchorPoint = Vector2.new(0.5, 0.5)
Die.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
Die.BackgroundTransparency = 0.8999999761581421
Die.BorderColor3 = Color3.new(0, 0, 0)
Die.BorderSizePixel = 0
Die.Position = UDim2.new(0.5, 0, 0.850000024, 0)
Die.Size = UDim2.new(0.927999973, 0, 0.200000003, 0)
Die.Font = Enum.Font.Oswald
Die.Text = "Kill"
Die.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Die.TextScaled = true
Die.TextSize = 14
Die.TextWrapped = true
Die.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
UICorner2.Name = "UICorner2"
UICorner2.Parent = Die

Entities.Name = "Entities"
Entities.Parent = ScrollingFrame
Entities.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
Entities.BackgroundTransparency = 0.5
Entities.BorderColor3 = Color3.new(0, 0, 0)
Entities.BorderSizePixel = 0
Entities.Position = UDim2.new(-7.92006034e-08, 0, 0.299999893, 0)
Entities.Size = UDim2.new(0.960000038, 0, 0.984039605, 0)

UICorner_8.Parent = Entities

TextLabel_4.Parent = Entities
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
TextLabel_4.BackgroundTransparency = 0.7400000095367432
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.5, 0, 0.107000001, 0)
TextLabel_4.Size = UDim2.new(0.949999988, 0, 0.143255129, 0)
TextLabel_4.Font = Enum.Font.Oswald
TextLabel_4.Text = ""
TextLabel_4.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_4.TextSize = 1
TextLabel_4.TextWrapped = true

UICorner_9.Parent = TextLabel_4

TextLabel_5.Parent = TextLabel_4
TextLabel_5.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0227653123, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0.977234662, 0, 1, 0)
TextLabel_5.Font = Enum.Font.Oswald
TextLabel_5.Text = "Entities"
TextLabel_5.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

UICorner_10.Parent = TextLabel_5

AntiEntity.Name = "AntiEntity"
AntiEntity.Parent = Entities
AntiEntity.AnchorPoint = Vector2.new(0.5, 0.5)
AntiEntity.BackgroundColor3 = Color3.new(1, 1, 1)
AntiEntity.BackgroundTransparency = 1
AntiEntity.BorderColor3 = Color3.new(0, 0, 0)
AntiEntity.BorderSizePixel = 0
AntiEntity.Position = UDim2.new(0.510999978, 0, 0.263000011, 0)
AntiEntity.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
AntiEntity.Font = Enum.Font.Oswald
AntiEntity.Text = "Anti entities"
AntiEntity.TextColor3 = Color3.new(1, 0.866667, 0.737255)
AntiEntity.TextScaled = true
AntiEntity.TextSize = 14
AntiEntity.TextWrapped = true
AntiEntity.TextXAlignment = Enum.TextXAlignment.Left

Frame_3.Parent = AntiEntity
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_3.BackgroundTransparency = 0.550000011920929
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_3.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_11.Parent = Frame_3
UICorner_11.CornerRadius = UDim.new(0, 10000)

TextButton_2.Parent = Frame_3
TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_2.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_2.BorderColor3 = Color3.new(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_2.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14
contoggle(TextButton_2, "st")

UICorner_12.Parent = TextButton_2
UICorner_12.CornerRadius = UDim.new(0, 10000)

Notify.Name = "Notify"
Notify.Parent = Entities
Notify.AnchorPoint = Vector2.new(0.5, 0.5)
Notify.BackgroundColor3 = Color3.new(1, 1, 1)
Notify.BackgroundTransparency = 1
Notify.BorderColor3 = Color3.new(0, 0, 0)
Notify.BorderSizePixel = 0
Notify.Position = UDim2.new(0.508296609, 0, 0.425496787, 0)
Notify.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
Notify.Font = Enum.Font.Oswald
Notify.Text = "Notify entities"
Notify.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Notify.TextScaled = true
Notify.TextSize = 14
Notify.TextWrapped = true
Notify.TextXAlignment = Enum.TextXAlignment.Left

Frame_4.Parent = Notify
Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_4.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_4.BackgroundTransparency = 0.550000011920929
Frame_4.BorderColor3 = Color3.new(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_4.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_13.Parent = Frame_4
UICorner_13.CornerRadius = UDim.new(0, 10000)

TextButton_3.Parent = Frame_4
TextButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_3.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_3.BorderColor3 = Color3.new(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_3.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = ""
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14
contoggle(TextButton_3, "ne")

UICorner_14.Parent = TextButton_3
UICorner_14.CornerRadius = UDim.new(0, 10000)

AutoHeartBeat.Name = "AutoHeartBeat"
AutoHeartBeat.Parent = Entities
AutoHeartBeat.AnchorPoint = Vector2.new(0.5, 0.5)
AutoHeartBeat.BackgroundColor3 = Color3.new(1, 1, 1)
AutoHeartBeat.BackgroundTransparency = 1
AutoHeartBeat.BorderColor3 = Color3.new(0, 0, 0)
AutoHeartBeat.BorderSizePixel = 0
AutoHeartBeat.Position = UDim2.new(0.508296609, 0, 0.587993622, 0)
AutoHeartBeat.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
AutoHeartBeat.Font = Enum.Font.Oswald
AutoHeartBeat.Text = "Auto heartbeat"
AutoHeartBeat.TextColor3 = Color3.new(1, 0.866667, 0.737255)
AutoHeartBeat.TextScaled = true
AutoHeartBeat.TextSize = 14
AutoHeartBeat.TextWrapped = true
AutoHeartBeat.TextXAlignment = Enum.TextXAlignment.Left

Frame_5.Parent = AutoHeartBeat
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_5.BackgroundTransparency = 0.550000011920929
Frame_5.BorderColor3 = Color3.new(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_5.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_15.Parent = Frame_5
UICorner_15.CornerRadius = UDim.new(0, 10000)

TextButton_4.Parent = Frame_5
TextButton_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_4.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_4.BorderColor3 = Color3.new(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_4.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = ""
TextButton_4.TextColor3 = Color3.new(0, 0, 0)
TextButton_4.TextSize = 14
contoggle(TextButton_4, "hbw")

UICorner_16.Parent = TextButton_4
UICorner_16.CornerRadius = UDim.new(0, 10000)

AutoGoUpFigure.Name = "AutoGoUpFigure"
AutoGoUpFigure.Parent = Entities
AutoGoUpFigure.AnchorPoint = Vector2.new(0.5, 0.5)
AutoGoUpFigure.BackgroundColor3 = Color3.new(1, 1, 1)
AutoGoUpFigure.BackgroundTransparency = 1
AutoGoUpFigure.BorderColor3 = Color3.new(0, 0, 0)
AutoGoUpFigure.BorderSizePixel = 0
AutoGoUpFigure.Position = UDim2.new(0.510999978, 0, 0.753069758, 0)
AutoGoUpFigure.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
AutoGoUpFigure.Font = Enum.Font.Oswald
AutoGoUpFigure.Text = "Avoid figure"
AutoGoUpFigure.TextColor3 = Color3.new(1, 0.866667, 0.737255)
AutoGoUpFigure.TextScaled = true
AutoGoUpFigure.TextSize = 14
AutoGoUpFigure.TextWrapped = true
AutoGoUpFigure.TextXAlignment = Enum.TextXAlignment.Left

Frame_6.Parent = AutoGoUpFigure
Frame_6.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_6.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_6.BackgroundTransparency = 0.550000011920929
Frame_6.BorderColor3 = Color3.new(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_6.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_17.Parent = Frame_6
UICorner_17.CornerRadius = UDim.new(0, 10000)

TextButton_5.Parent = Frame_6
TextButton_5.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_5.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_5.BorderColor3 = Color3.new(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_5.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = ""
TextButton_5.TextColor3 = Color3.new(0, 0, 0)
TextButton_5.TextSize = 14
contoggle(TextButton_5, "af")

UICorner_18.Parent = TextButton_5
UICorner_18.CornerRadius = UDim.new(0, 10000)

AutoRushCloset.Name = "AutoRushCloset"
AutoRushCloset.Parent = Entities
AutoRushCloset.AnchorPoint = Vector2.new(0.5, 0.5)
AutoRushCloset.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRushCloset.BackgroundTransparency = 1
AutoRushCloset.BorderColor3 = Color3.new(0, 0, 0)
AutoRushCloset.BorderSizePixel = 0
AutoRushCloset.Position = UDim2.new(0.510999978, 0, 0.907828629, 0)
AutoRushCloset.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
AutoRushCloset.Font = Enum.Font.Oswald
AutoRushCloset.Text = "Auto closet rush"
AutoRushCloset.TextColor3 = Color3.new(1, 0.866667, 0.737255)
AutoRushCloset.TextScaled = true
AutoRushCloset.TextSize = 14
AutoRushCloset.TextWrapped = true
AutoRushCloset.TextXAlignment = Enum.TextXAlignment.Left

Frame_7.Parent = AutoRushCloset
Frame_7.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_7.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_7.BackgroundTransparency = 0.550000011920929
Frame_7.BorderColor3 = Color3.new(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_7.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_19.Parent = Frame_7
UICorner_19.CornerRadius = UDim.new(0, 10000)

TextButton_6.Parent = Frame_7
TextButton_6.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_6.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_6.BorderColor3 = Color3.new(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_6.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = ""
TextButton_6.TextColor3 = Color3.new(0, 0, 0)
TextButton_6.TextSize = 14
contoggle(TextButton_6, "arc")

UICorner_20.Parent = TextButton_6
UICorner_20.CornerRadius = UDim.new(0, 10000)

Fullbright.Name = "Fullbright"
Fullbright.Parent = ScrollingFrame
Fullbright.AnchorPoint = Vector2.new(0.5, 0.5)
Fullbright.BackgroundColor3 = Color3.new(1, 1, 1)
Fullbright.BackgroundTransparency = 1
Fullbright.BorderColor3 = Color3.new(0, 0, 0)
Fullbright.BorderSizePixel = 0
Fullbright.Position = UDim2.new(0.479999959, 0, 0.880963922, 0)
Fullbright.Size = UDim2.new(0.960000038, 0, 0.161927789, 0)
Fullbright.Font = Enum.Font.Oswald
Fullbright.Text = "Fullbright"
Fullbright.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Fullbright.TextScaled = true
Fullbright.TextSize = 14
Fullbright.TextWrapped = true
Fullbright.TextXAlignment = Enum.TextXAlignment.Left

Frame_8.Parent = Fullbright
Frame_8.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_8.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_8.BackgroundTransparency = 0.550000011920929
Frame_8.BorderColor3 = Color3.new(0, 0, 0)
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_8.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2.Name = "2"
_2.Parent = Frame_8
_2.CornerRadius = UDim.new(0, 10000)

TextButton_7.Parent = Frame_8
TextButton_7.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_7.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_7.BorderColor3 = Color3.new(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_7.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = ""
TextButton_7.TextColor3 = Color3.new(0, 0, 0)
TextButton_7.TextSize = 14
TextButton_7:SetAttribute("v", false)
TextButton_7:GetAttributeChangedSignal("v"):Connect(function()
	local dooo = TextButton_7:GetAttribute("v")
	if dooo then
		fb()
	else
		unfb()
	end
end)
TextButton_7.MouseButton1Click:Connect(function()
	toggle(TextButton_7)
end)


_2_2.Name = "2"
_2_2.Parent = TextButton_7
_2_2.CornerRadius = UDim.new(0, 10000)

ESP.Name = "ESP"
ESP.Parent = ScrollingFrame
ESP.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
ESP.BackgroundTransparency = 0.5
ESP.BorderColor3 = Color3.new(0, 0, 0)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(-7.92006034e-08, 0, -4.27012665e-08, 0)
ESP.Size = UDim2.new(0.959999979, 0, 0.699999988, 0)

UICorner2_2.Name = "UICorner2"
UICorner2_2.Parent = ESP

Door.Name = "Door"
Door.Parent = ESP
Door.AnchorPoint = Vector2.new(0.5, 0.5)
Door.BackgroundColor3 = Color3.new(1, 1, 1)
Door.BackgroundTransparency = 1
Door.BorderColor3 = Color3.new(0, 0, 0)
Door.BorderSizePixel = 0
Door.Position = UDim2.new(0.508296609, 0, 0.344372362, 0)
Door.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
Door.Font = Enum.Font.Oswald
Door.Text = "Door"
Door.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Door.TextScaled = true
Door.TextSize = 14
Door.TextWrapped = true
Door.TextXAlignment = Enum.TextXAlignment.Left

Frame_9.Parent = Door
Frame_9.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_9.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_9.BackgroundTransparency = 0.550000011920929
Frame_9.BorderColor3 = Color3.new(0, 0, 0)
Frame_9.BorderSizePixel = 0
Frame_9.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_9.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_21.Parent = Frame_9
UICorner_21.CornerRadius = UDim.new(0, 10000)

TextButton_8.Parent = Frame_9
TextButton_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_8.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_8.BorderColor3 = Color3.new(0, 0, 0)
TextButton_8.BorderSizePixel = 0
TextButton_8.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_8.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = ""
TextButton_8.TextColor3 = Color3.new(0, 0, 0)
TextButton_8.TextSize = 14
contoggle(TextButton_8, "des")

UICorner_22.Parent = TextButton_8
UICorner_22.CornerRadius = UDim.new(0, 10000)

TextLabel_6.Parent = ESP
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_6.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
TextLabel_6.BackgroundTransparency = 0.75
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.5, 0, 0.150000006, 0)
TextLabel_6.Size = UDim2.new(0.949999988, 0, 0.200000003, 0)
TextLabel_6.Font = Enum.Font.Oswald
TextLabel_6.Text = ""
TextLabel_6.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_6.TextSize = 1
TextLabel_6.TextWrapped = true

_2_3.Name = "2"
_2_3.Parent = TextLabel_6

TextLabel_7.Parent = TextLabel_6
TextLabel_7.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0227653123, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0.977234662, 0, 1, 0)
TextLabel_7.Font = Enum.Font.Oswald
TextLabel_7.Text = "ESP"
TextLabel_7.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

_2_4.Name = "2"
_2_4.Parent = TextLabel_7

KeySwitchBookBreaker.Name = "Key/Switch/Book/Breaker"
KeySwitchBookBreaker.Parent = ESP
KeySwitchBookBreaker.AnchorPoint = Vector2.new(0.5, 0.5)
KeySwitchBookBreaker.BackgroundColor3 = Color3.new(1, 1, 1)
KeySwitchBookBreaker.BackgroundTransparency = 1
KeySwitchBookBreaker.BorderColor3 = Color3.new(0, 0, 0)
KeySwitchBookBreaker.BorderSizePixel = 0
KeySwitchBookBreaker.Position = UDim2.new(0.508296609, 0, 0.511164844, 0)
KeySwitchBookBreaker.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
KeySwitchBookBreaker.Font = Enum.Font.Oswald
KeySwitchBookBreaker.Text = "Key, book etc"
KeySwitchBookBreaker.TextColor3 = Color3.new(1, 0.866667, 0.737255)
KeySwitchBookBreaker.TextScaled = true
KeySwitchBookBreaker.TextSize = 14
KeySwitchBookBreaker.TextWrapped = true
KeySwitchBookBreaker.TextXAlignment = Enum.TextXAlignment.Left

Frame_10.Parent = KeySwitchBookBreaker
Frame_10.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_10.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_10.BackgroundTransparency = 0.550000011920929
Frame_10.BorderColor3 = Color3.new(0, 0, 0)
Frame_10.BorderSizePixel = 0
Frame_10.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_10.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2_5.Name = "2"
_2_5.Parent = Frame_10
_2_5.CornerRadius = UDim.new(0, 10000)

TextButton_9.Parent = Frame_10
TextButton_9.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_9.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_9.BorderColor3 = Color3.new(0, 0, 0)
TextButton_9.BorderSizePixel = 0
TextButton_9.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_9.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = ""
TextButton_9.TextColor3 = Color3.new(0, 0, 0)
TextButton_9.TextSize = 14
contoggle(TextButton_9, "kes")

_2_6.Name = "2"
_2_6.Parent = TextButton_9
_2_6.CornerRadius = UDim.new(0, 10000)

GoldItems.Name = "Gold/Items"
GoldItems.Parent = ESP
GoldItems.AnchorPoint = Vector2.new(0.5, 0.5)
GoldItems.BackgroundColor3 = Color3.new(1, 1, 1)
GoldItems.BackgroundTransparency = 1
GoldItems.BorderColor3 = Color3.new(0, 0, 0)
GoldItems.BorderSizePixel = 0
GoldItems.Position = UDim2.new(0.508000016, 0, 0.677999973, 0)
GoldItems.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
GoldItems.Font = Enum.Font.Oswald
GoldItems.Text = "Gold, items"
GoldItems.TextColor3 = Color3.new(1, 0.866667, 0.737255)
GoldItems.TextScaled = true
GoldItems.TextSize = 14
GoldItems.TextWrapped = true
GoldItems.TextXAlignment = Enum.TextXAlignment.Left

Frame_11.Parent = GoldItems
Frame_11.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_11.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_11.BackgroundTransparency = 0.550000011920929
Frame_11.BorderColor3 = Color3.new(0, 0, 0)
Frame_11.BorderSizePixel = 0
Frame_11.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_11.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2_7.Name = "2"
_2_7.Parent = Frame_11
_2_7.CornerRadius = UDim.new(0, 10000)

TextButton_10.Parent = Frame_11
TextButton_10.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_10.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_10.BorderColor3 = Color3.new(0, 0, 0)
TextButton_10.BorderSizePixel = 0
TextButton_10.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_10.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = ""
TextButton_10.TextColor3 = Color3.new(0, 0, 0)
TextButton_10.TextSize = 14
contoggle(TextButton_10, "ies")

_2_8.Name = "2"
_2_8.Parent = TextButton_10
_2_8.CornerRadius = UDim.new(0, 10000)

Entities_2.Name = "Entities"
Entities_2.Parent = ESP
Entities_2.AnchorPoint = Vector2.new(0.5, 0.5)
Entities_2.BackgroundColor3 = Color3.new(1, 1, 1)
Entities_2.BackgroundTransparency = 1
Entities_2.BorderColor3 = Color3.new(0, 0, 0)
Entities_2.BorderSizePixel = 0
Entities_2.Position = UDim2.new(0.508000016, 0, 0.845000029, 0)
Entities_2.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
Entities_2.Font = Enum.Font.Oswald
Entities_2.Text = "Entities"
Entities_2.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Entities_2.TextScaled = true
Entities_2.TextSize = 14
Entities_2.TextWrapped = true
Entities_2.TextXAlignment = Enum.TextXAlignment.Left

Frame_12.Parent = Entities_2
Frame_12.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_12.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_12.BackgroundTransparency = 0.550000011920929
Frame_12.BorderColor3 = Color3.new(0, 0, 0)
Frame_12.BorderSizePixel = 0
Frame_12.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_12.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2_9.Name = "2"
_2_9.Parent = Frame_12
_2_9.CornerRadius = UDim.new(0, 10000)

TextButton_11.Parent = Frame_12
TextButton_11.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_11.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_11.BorderColor3 = Color3.new(0, 0, 0)
TextButton_11.BorderSizePixel = 0
TextButton_11.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_11.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_11.Font = Enum.Font.SourceSans
TextButton_11.Text = ""
TextButton_11.TextColor3 = Color3.new(0, 0, 0)
TextButton_11.TextSize = 14
contoggle(TextButton_11, "ees")

_2_10.Name = "2"
_2_10.Parent = TextButton_11
_2_10.CornerRadius = UDim.new(0, 10000)

World.Name = "World"
World.Parent = ScrollingFrame
World.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
World.BackgroundTransparency = 0.5
World.BorderColor3 = Color3.new(0, 0, 0)
World.BorderSizePixel = 0
World.Position = UDim2.new(-7.92006034e-08, 0, -4.27012665e-08, 0)
World.Size = UDim2.new(0.959999979, 0, 0.699999988, 0)

UICorner2_3.Name = "UICorner2"
UICorner2_3.Parent = World

RemoveGenralOb.Name = "RemoveGenralOb"
RemoveGenralOb.Parent = World
RemoveGenralOb.AnchorPoint = Vector2.new(0.5, 0.5)
RemoveGenralOb.BackgroundColor3 = Color3.new(1, 1, 1)
RemoveGenralOb.BackgroundTransparency = 1
RemoveGenralOb.BorderColor3 = Color3.new(0, 0, 0)
RemoveGenralOb.BorderSizePixel = 0
RemoveGenralOb.Position = UDim2.new(0.504999995, 0, 0.372999996, 0)
RemoveGenralOb.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
RemoveGenralOb.Font = Enum.Font.Oswald
RemoveGenralOb.Text = "Remove gate etc"
RemoveGenralOb.TextColor3 = Color3.new(1, 0.866667, 0.737255)
RemoveGenralOb.TextScaled = true
RemoveGenralOb.TextSize = 14
RemoveGenralOb.TextWrapped = true
RemoveGenralOb.TextXAlignment = Enum.TextXAlignment.Left

Frame_13.Parent = RemoveGenralOb
Frame_13.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_13.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_13.BackgroundTransparency = 0.550000011920929
Frame_13.BorderColor3 = Color3.new(0, 0, 0)
Frame_13.BorderSizePixel = 0
Frame_13.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_13.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_23.Parent = Frame_13
UICorner_23.CornerRadius = UDim.new(0, 10000)

TextButton_12.Parent = Frame_13
TextButton_12.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_12.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_12.BorderColor3 = Color3.new(0, 0, 0)
TextButton_12.BorderSizePixel = 0
TextButton_12.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_12.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_12.Font = Enum.Font.SourceSans
TextButton_12.Text = ""
TextButton_12.TextColor3 = Color3.new(0, 0, 0)
TextButton_12.TextSize = 14
contoggle(TextButton_12, "no")

UICorner_24.Parent = TextButton_12
UICorner_24.CornerRadius = UDim.new(0, 10000)

TextLabel_8.Parent = World
TextLabel_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_8.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
TextLabel_8.BackgroundTransparency = 0.75
TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.5, 0, 0.150000006, 0)
TextLabel_8.Size = UDim2.new(0.949999988, 0, 0.200000003, 0)
TextLabel_8.Font = Enum.Font.Oswald
TextLabel_8.Text = ""
TextLabel_8.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_8.TextSize = 1
TextLabel_8.TextWrapped = true

_2_11.Name = "2"
_2_11.Parent = TextLabel_8

TextLabel_9.Parent = TextLabel_8
TextLabel_9.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0227653123, 0, 0, 0)
TextLabel_9.Size = UDim2.new(0.977234662, 0, 1, 0)
TextLabel_9.Font = Enum.Font.Oswald
TextLabel_9.Text = "World"
TextLabel_9.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

_2_12.Name = "2"
_2_12.Parent = TextLabel_9

PickupAura.Name = "PickupAura"
PickupAura.Parent = World
PickupAura.AnchorPoint = Vector2.new(0.5, 0.5)
PickupAura.BackgroundColor3 = Color3.new(1, 1, 1)
PickupAura.BackgroundTransparency = 1
PickupAura.BorderColor3 = Color3.new(0, 0, 0)
PickupAura.BorderSizePixel = 0
PickupAura.Position = UDim2.new(0.504999995, 0, 0.595000029, 0)
PickupAura.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
PickupAura.Font = Enum.Font.Oswald
PickupAura.Text = "Pickup aura"
PickupAura.TextColor3 = Color3.new(1, 0.866667, 0.737255)
PickupAura.TextScaled = true
PickupAura.TextSize = 14
PickupAura.TextWrapped = true
PickupAura.TextXAlignment = Enum.TextXAlignment.Left

Frame_14.Parent = PickupAura
Frame_14.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_14.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_14.BackgroundTransparency = 0.550000011920929
Frame_14.BorderColor3 = Color3.new(0, 0, 0)
Frame_14.BorderSizePixel = 0
Frame_14.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_14.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2_13.Name = "2"
_2_13.Parent = Frame_14
_2_13.CornerRadius = UDim.new(0, 10000)

TextButton_13.Parent = Frame_14
TextButton_13.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_13.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_13.BorderColor3 = Color3.new(0, 0, 0)
TextButton_13.BorderSizePixel = 0
TextButton_13.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_13.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_13.Font = Enum.Font.SourceSans
TextButton_13.Text = ""
TextButton_13.TextColor3 = Color3.new(0, 0, 0)
TextButton_13.TextSize = 14
contoggle(TextButton_13, "pa")

_2_14.Name = "2"
_2_14.Parent = TextButton_13
_2_14.CornerRadius = UDim.new(0, 10000)

NoSeekOb.Name = "NoSeekOb"
NoSeekOb.Parent = World
NoSeekOb.AnchorPoint = Vector2.new(0.5, 0.5)
NoSeekOb.BackgroundColor3 = Color3.new(1, 1, 1)
NoSeekOb.BackgroundTransparency = 1
NoSeekOb.BorderColor3 = Color3.new(0, 0, 0)
NoSeekOb.BorderSizePixel = 0
NoSeekOb.Position = UDim2.new(0.505296588, 0, 0.81578517, 0)
NoSeekOb.Size = UDim2.new(0.928373039, 0, 0.189122215, 0)
NoSeekOb.Font = Enum.Font.Oswald
NoSeekOb.Text = "No seek fire etc"
NoSeekOb.TextColor3 = Color3.new(1, 0.866667, 0.737255)
NoSeekOb.TextScaled = true
NoSeekOb.TextSize = 14
NoSeekOb.TextWrapped = true
NoSeekOb.TextXAlignment = Enum.TextXAlignment.Left

Frame_15.Parent = NoSeekOb
Frame_15.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_15.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_15.BackgroundTransparency = 0.550000011920929
Frame_15.BorderColor3 = Color3.new(0, 0, 0)
Frame_15.BorderSizePixel = 0
Frame_15.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_15.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

_2_15.Name = "2"
_2_15.Parent = Frame_15
_2_15.CornerRadius = UDim.new(0, 10000)

TextButton_14.Parent = Frame_15
TextButton_14.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_14.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton_14.BorderColor3 = Color3.new(0, 0, 0)
TextButton_14.BorderSizePixel = 0
TextButton_14.Position = UDim2.new(0.239999995, 0, 0.5, 0)
TextButton_14.Size = UDim2.new(0.467999995, 0, 1, 0)
TextButton_14.Font = Enum.Font.SourceSans
TextButton_14.Text = ""
TextButton_14.TextColor3 = Color3.new(0, 0, 0)
TextButton_14.TextSize = 14
contoggle(TextButton_14, "nso")

_2_16.Name = "2"
_2_16.Parent = TextButton_14
_2_16.CornerRadius = UDim.new(0, 10000)

TextLabel_10.Parent = ScrollingFrame
TextLabel_10.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.479999959, 0, 0.838000059, 0)
TextLabel_10.Size = UDim2.new(0.960000038, 0, 0.116313323, 0)
TextLabel_10.Font = Enum.Font.Oswald
TextLabel_10.Text = "Press left shift to show and hide the ui"
TextLabel_10.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14
TextLabel_10.TextWrapped = true

TextLabel_11.Parent = ScrollingFrame
TextLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_11.BackgroundTransparency = 1
TextLabel_11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Size = UDim2.new(0.959999979, 0, 0.162, 0)
TextLabel_11.Font = Enum.Font.Oswald
TextLabel_11.Text = "Thank you for using GSDoors"
TextLabel_11.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14
TextLabel_11.TextWrapped = true
Uitils.MakeDraggable(Frame, Top, 0)

function fb()
	local lighting = game:GetService("Lighting");
	fbd = {}
	fbd[1] = lighting.Ambient
	fbd[2] = lighting.Brightness
	fbd[3] = lighting.FogEnd
	lighting.Ambient = Color3.fromRGB(255, 255, 255);
	lighting.Brightness = 1;
	lighting.FogEnd = 1e10;
	for i, v in pairs(lighting:GetDescendants()) do
		if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
			v:SetAttribute("e", v.Enabled)
			v.Enabled = false;
		end;
	end;
	fbd[4] = lighting.Changed:Connect(function()
		lighting.Ambient = Color3.fromRGB(255, 255, 255);
		lighting.Brightness = 1;
		lighting.FogEnd = 1e10;
	end);
end
function unfb()
	local lighting = game:GetService("Lighting");
	lighting.Ambient = fbd[1];
	lighting.Brightness = fbd[2];
	lighting.FogEnd = fbd[3];
	for i, v in pairs(lighting:GetDescendants()) do
		if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
			v.Enabled = v:GetAttribute("e") or v.Enabled;
		end;
	end;
	fbd[4]:Disconnect()
end
--// ok actual code starts here


game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
	if vs["it"] then
		fireproximityprompt(prompt)
	end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
	local args = {...}
	local method = getnamecallmethod()

	if tostring(self) == 'Screech' and method == "FireServer" and vs["st"] then
		args[1] = true
		return old(self,unpack(args))
	end
	if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and vs["hbw"] then
		args[2] = true
		return old(self,unpack(args))
	end

	return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
	if child.Name == "Screech" and vs["st"] then
		child:Destroy()
	end

end)
local screechremote = game.ReplicatedStorage.EntityInfo:FindFirstChild("Screech")

function updateesp()
	esp:Clear()
	local curval = LatestRoom.Value
	local newroom = game.Workspace.CurrentRooms[tostring(LatestRoom.Value)]
	local door = newroom.Door
	if vs["des"] then
		esp:AddHighlight(door.Door, Color3.new(1,1,0))
		if curval ~= 50 then
			esp:AddText(door.Door.Sign, Color3.new(1,1,0), "Door " .. tostring(LatestRoom.Value + 1))
		end
	end
	if vs["kes"] then
		local desc = newroom:GetDescendants()
		for i=1, #desc do
			local n = desc[i]
			if n.Name == "KeyObtain" then
				esp:AddHighlight(n, Color3.new(0,1,1))
				esp:AddText(n, Color3.new(0,1,1), "Key")
			end
			if n.Name == "LeverForGate" then
				esp:AddHighlight(n, Color3.new(0,1,1))
				esp:AddText(n, Color3.new(0,1,1), "Gate switch")
			end
			if n.Name == "LiveHintBook" then
				esp:AddHighlight(n, Color3.new(0,1,1))
				esp:AddText(n, Color3.new(0,1,1), "Book")
			end
			if n.Name == "LiveBreakerPolePickup" then
				esp:AddHighlight(n, Color3.new(0,1,1))
				esp:AddText(n, Color3.new(0,1,1), "Breaker")
			end
			if n.Name == "PickupItem" then
				esp:AddHighlight(n, Color3.new(0,1,1))
				esp:AddText(n, Color3.new(0,1,1), "Library paper")
			end
		end
	end
	if vs["ies"] then
		if newroom:FindFirstChild("Assets") then
			local desc = newroom.Assets:GetDescendants()
			for i=1, #desc do
				local v = desc[i]
				if v:IsA("Model") then
					local goldvalue = v:GetAttribute("GoldValue")
	
					if goldvalue then
						esp:AddHighlight(v, Color3.new(1,0,1))
						esp:AddText(v, Color3.new(1,0,1), tostring(goldvalue) .. " Gold")
					end
					if (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
						local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
						esp:AddHighlight(part, Color3.new(1,0,1))
						esp:AddText(part, Color3.new(1,0,1), v.Name)
					end
				end
			end
		end
	end
	if vs["ees"] then
		if curval == 50 then
			esp:AddHighlight(newroom.FigureSetup.FigureRagdoll, Color3.new(1,0,0))
			esp:AddText(newroom.FigureSetup.FigureRagdoll, Color3.new(1,0,0), "Figure")
		end
		if newroom:FindFirstChild("Assets") then
			local ad = newroom.Assets:GetDescendants()
			for i=1, #ad do
				if ad[i].Name == "Snare" then
					esp:AddHighlight(ad[i], Color3.new(1,0,0))
					esp:AddText(ad[i], Color3.new(1,0,0), "Snare")
				end
			end
		end
	end
end
function newroom()
	local curval = LatestRoom.Value
	local newroom = game.Workspace.CurrentRooms[tostring(curval)]
	if vs["nso"] then
		if newroom:FindFirstChild("Assets") then
			local desc = newroom.Assets:GetDescendants()
			for i=1, #desc do
				local n = desc[i]
				if n.Name == "Seek_Arm" then
					task.spawn(function()
						wait()
						n:Destroy()
					end)
				end
				if n.Name == "ChandelierObstruction" then
					task.spawn(function()
						wait()
						n:Destroy()
					end)
				end
			end
		end
	end
	if vs["st"] then
		local trigger = newroom:FindFirstChild("TriggerEventCollision")

		if trigger then
			trigger:Destroy() 
		end
	end
	if vs["no"] then
		local gate = newroom:FindFirstChild("Gate")

		if gate then
			local door = gate:FindFirstChild("ThingToOpen")

			if door then
				door:Destroy() 
			end
		end
		local assets = newroom:FindFirstChild("Assets")
		local paintings = assets:FindFirstChild("Paintings")

		if paintings then
			local door = paintings:FindFirstChild("MovingDoor")

			if door then
				door:Destroy() 
			end 
		end
		local door = newroom:FindFirstChild("Wax_Door")

		if door then
			door:Destroy() 
		end
	end
	updateesp()
	
end
LatestRoom:GetPropertyChangedSignal("Value"):Connect(newroom)
local player = game.Players.LocalPlayer
local char = player.Character
function findclosets()
	local roms = game.Workspace.CurrentRooms:GetChildren()
	local closets = {}
	for i=1,#roms do
		if roms[i]:FindFirstChild("Assets") then
			print("Assets found in room " .. roms[i].Name)
			local astets = roms[i]:FindFirstChild("Assets")
			local added = 0
			for j=1, #astets:GetChildren() do
				if astets:GetChildren()[j].Name == "Wardrobe" or astets:GetChildren()[j].Name == "Toolshed" then
					table.insert(closets, astets:GetChildren()[j])
					added = added + 1
				end
			end
			if added == 0 then
				print("No closets found in room " .. roms[i].Name)
			else
				print("Closets found in room " .. roms[i].Name)
			end
		else
			print("No assets found in room " .. roms[i].Name)
		end
	end
	return closets
end
function findnearestcloset()
	local closets = findclosets()
	local rootPart = char and char:FindFirstChild("HumanoidRootPart")
	local distances = {}
	for i=1, #closets do

		local mainpos = closets[i].Main.Position
		table.insert(distances, (mainpos - rootPart.Position).magnitude)
	end
	local lowest = 1000000000000000
	local lowestindex = 0
	for i=1, #distances do
		if distances[i] < lowest then
			lowest = distances[i]
			lowestindex = i
		end
	end
	print("Closest closet found was " .. lowest .. " studs away from the player and in room " .. closets[lowestindex].Parent.Parent.Name)
	return closets[lowestindex]
end
print("Loaded v1.0")

-- Function to define the original position when RushMoving spawns
local function onRushMovingAdded(child)
	if child.Name == "RushMoving" then
		local player = game.Players.LocalPlayer
		local character = player.Character
		local closet = findnearestcloset()
		local rootPart = character and character:FindFirstChild("HumanoidRootPart")
		while not child:FindFirstChild("RushNew") do
			wait()
		end
		if (child:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude > 9999 then
			return
		end
		if vs["ees"] then
			esp:AddHighlight(child:FindFirstChild("RushNew"), Color3.new(1,0,0))
			esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Rush")
		end
		if rootPart and vs["arc"] then
			while child.Parent == game.Workspace do
				local rushMoving = workspace:FindFirstChild("RushMoving")
				wait(0.1)
				character:MoveTo(closet.Door1.Position)
				if rushMoving:FindFirstChild("RushNew") and (rushMoving:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude < 200 and closet.HiddenPlayer.Value == nil then
					fireproximityprompt(closet.HidePrompt)
					wait(0.1)
				else
				end
			end
		end
	end
	if child.Name == "AmbushMoving" then
		local player = game.Players.LocalPlayer
		local character = player.Character
		local closet = findnearestcloset()
		local rootPart = character and character:FindFirstChild("HumanoidRootPart")
		while not child:FindFirstChild("RushNew") do
			wait()
		end
		if (child:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude > 9999 then
			return
		end
		if vs["ees"] then
			esp:AddHighlight(child:FindFirstChild("RushNew"), Color3.new(1,0,0))
			esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Ambush")
		end
	end
end

-- Connect the function to be called whenever a new child is added to workspace
game:GetService("Workspace").ChildAdded:Connect(onRushMovingAdded)
while true do
	if vs["st"] then
		screechremote.Parent = nil
	else
		screechremote.Parent = game.ReplicatedStorage.EntityInfo
	end
	wait(0.1)
	player.WalkSpeed = vs["ws"]
end
