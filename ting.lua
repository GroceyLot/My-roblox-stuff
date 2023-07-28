local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local ws = 2
local des = false
local kes = false
local ies = false
local ees = false
local st = false
local nso = false
local it = false
local hbw = false
local arc
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
local Frame_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local InstantPrompts = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local Die = Instance.new("TextButton")
local UICorner2 = Instance.new("UICorner")
local Entities = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local NoScreech = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local NoSFireArms = Instance.new("TextLabel")
local Frame_5 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local AutoHeartBeat = Instance.new("TextLabel")
local Frame_6 = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local AutoRushCloset = Instance.new("TextLabel")
local Frame_7 = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local TextButton_6 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Fullbright = Instance.new("TextLabel")
local Frame_8 = Instance.new("Frame")
local _2 = Instance.new("UICorner")
local TextButton_7 = Instance.new("TextButton")
local _2_2 = Instance.new("UICorner")
local ESP = Instance.new("Frame")
local UICorner2_2 = Instance.new("UICorner")
local Door = Instance.new("TextLabel")
local Frame_9 = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local TextButton_8 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
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
local UIStroke = Instance.new("UIStroke")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
Frame.BackgroundTransparency = 0.10000000149011612
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0.300000012, 0, 0.699999988, 0)

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
TextLabel.Text = "Gsdoors"
TextLabel.TextColor3 = Color3.new(1, 0.866667, 0.737255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.49999997, 0, 0.572877347, 0)
ScrollingFrame.Size = UDim2.new(0.949999988, 0, 0.818081737, 0)
ScrollingFrame.CanvasPosition = Vector2.new(0, 39.0928955)
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
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(1, 0.866667, 0.737255)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true
Speed.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = Speed
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_2.BackgroundTransparency = 0.550000011920929
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.699999988, 0, 0.5, 0)
Frame_2.Size = UDim2.new(0.5, 0, 0.800000012, 0)

UICorner_3.Parent = Frame_2

TextButton.Parent = Frame_2
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.BackgroundColor3 = Color3.new(1, 0.866667, 0.737255)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0209999997, 0, 0.5, 0)
TextButton.Size = UDim2.new(0.0419999994, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14


UICorner_4.Parent = TextButton
UICorner_4.CornerRadius = UDim.new(0, 22)

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

Frame_3.Parent = InstantPrompts
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_3.BackgroundTransparency = 0.550000011920929
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_3.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_5.Parent = Frame_3
UICorner_5.CornerRadius = UDim.new(0, 10000)

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
TextButton_2:SetAttribute("v", false)
TextButton_2:GetAttributeChangedSignal("v"):Connect(function()
	it = TextButton_2:GetAttribute("v")
	print(it)
	print(TextButton_2:GetAttribute("v"))
end)
TextButton_2.MouseButton1Click:Connect(function()
	toggle(TextButton_2)
end)

UICorner_6.Parent = TextButton_2
UICorner_6.CornerRadius = UDim.new(0, 10000)

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

UICorner_7.Parent = TextLabel_2

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

UICorner_8.Parent = TextLabel_3

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

UICorner_9.Parent = Entities

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

UICorner_10.Parent = TextLabel_4

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

UICorner_11.Parent = TextLabel_5

NoScreech.Name = "NoScreech"
NoScreech.Parent = Entities
NoScreech.AnchorPoint = Vector2.new(0.5, 0.5)
NoScreech.BackgroundColor3 = Color3.new(1, 1, 1)
NoScreech.BackgroundTransparency = 1
NoScreech.BorderColor3 = Color3.new(0, 0, 0)
NoScreech.BorderSizePixel = 0
NoScreech.Position = UDim2.new(0.510999978, 0, 0.263000011, 0)
NoScreech.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
NoScreech.Font = Enum.Font.Oswald
NoScreech.Text = "No screech"
NoScreech.TextColor3 = Color3.new(1, 0.866667, 0.737255)
NoScreech.TextScaled = true
NoScreech.TextSize = 14
NoScreech.TextWrapped = true
NoScreech.TextXAlignment = Enum.TextXAlignment.Left

Frame_4.Parent = NoScreech
Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_4.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_4.BackgroundTransparency = 0.550000011920929
Frame_4.BorderColor3 = Color3.new(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_4.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_12.Parent = Frame_4
UICorner_12.CornerRadius = UDim.new(0, 10000)

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
TextButton_3:SetAttribute("v", false)
TextButton_3:GetAttributeChangedSignal("v"):Connect(function()
	st = TextButton_3:GetAttribute("v")
end)
TextButton_3.MouseButton1Click:Connect(function()
	toggle(TextButton_3)
end)

UICorner_13.Parent = TextButton_3
UICorner_13.CornerRadius = UDim.new(0, 10000)

NoSFireArms.Name = "NoSFireArms"
NoSFireArms.Parent = Entities
NoSFireArms.AnchorPoint = Vector2.new(0.5, 0.5)
NoSFireArms.BackgroundColor3 = Color3.new(1, 1, 1)
NoSFireArms.BackgroundTransparency = 1
NoSFireArms.BorderColor3 = Color3.new(0, 0, 0)
NoSFireArms.BorderSizePixel = 0
NoSFireArms.Position = UDim2.new(0.508296609, 0, 0.425496787, 0)
NoSFireArms.Size = UDim2.new(0.928000033, 0, 0.138689741, 0)
NoSFireArms.Font = Enum.Font.Oswald
NoSFireArms.Text = "No seek fire etc"
NoSFireArms.TextColor3 = Color3.new(1, 0.866667, 0.737255)
NoSFireArms.TextScaled = true
NoSFireArms.TextSize = 14
NoSFireArms.TextWrapped = true
NoSFireArms.TextXAlignment = Enum.TextXAlignment.Left

Frame_5.Parent = NoSFireArms
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_5.BackgroundTransparency = 0.550000011920929
Frame_5.BorderColor3 = Color3.new(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_5.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_14.Parent = Frame_5
UICorner_14.CornerRadius = UDim.new(0, 10000)

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
TextButton_4:SetAttribute("v", false)
TextButton_4:GetAttributeChangedSignal("v"):Connect(function()
	nso = TextButton_4:GetAttribute("v")
end)
TextButton_4.MouseButton1Click:Connect(function()
	toggle(TextButton_4)
end)

UICorner_15.Parent = TextButton_4
UICorner_15.CornerRadius = UDim.new(0, 10000)

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

Frame_6.Parent = AutoHeartBeat
Frame_6.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_6.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
Frame_6.BackgroundTransparency = 0.550000011920929
Frame_6.BorderColor3 = Color3.new(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
Frame_6.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

UICorner_16.Parent = Frame_6
UICorner_16.CornerRadius = UDim.new(0, 10000)

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
TextButton_5:SetAttribute("v", false)
TextButton_5:GetAttributeChangedSignal("v"):Connect(function()
	hbw = TextButton_5:GetAttribute("v")
end)
TextButton_5.MouseButton1Click:Connect(function()
	toggle(TextButton_5)
end)

UICorner_17.Parent = TextButton_5
UICorner_17.CornerRadius = UDim.new(0, 10000)

AutoRushCloset.Name = "AutoRushCloset"
AutoRushCloset.Parent = Entities
AutoRushCloset.AnchorPoint = Vector2.new(0.5, 0.5)
AutoRushCloset.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRushCloset.BackgroundTransparency = 1
AutoRushCloset.BorderColor3 = Color3.new(0, 0, 0)
AutoRushCloset.BorderSizePixel = 0
AutoRushCloset.Position = UDim2.new(0.510999978, 0, 0.753069758, 0)
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

UICorner_18.Parent = Frame_7
UICorner_18.CornerRadius = UDim.new(0, 10000)

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
TextButton_6:SetAttribute("v", false)
TextButton_6:GetAttributeChangedSignal("v"):Connect(function()
	arc = TextButton_6:GetAttribute("v")
end)
TextButton_6.MouseButton1Click:Connect(function()
	toggle(TextButton_6)
end)

UICorner_19.Parent = TextButton_6
UICorner_19.CornerRadius = UDim.new(0, 10000)

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
	if TextButton_7:GetAttribute("v") then
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

UICorner_20.Parent = Frame_9
UICorner_20.CornerRadius = UDim.new(0, 10000)

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
TextButton_8:SetAttribute("v", false)
TextButton_8:GetAttributeChangedSignal("v"):Connect(function()
	des = TextButton_8:GetAttribute("v")
end)
TextButton_8.MouseButton1Click:Connect(function()
	toggle(TextButton_8)
end)

UICorner_21.Parent = TextButton_8
UICorner_21.CornerRadius = UDim.new(0, 10000)

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
TextButton_9:SetAttribute("v", false)
TextButton_9:GetAttributeChangedSignal("v"):Connect(function()
	kes = TextButton_9:GetAttribute("v")
end)
TextButton_9.MouseButton1Click:Connect(function()
	toggle(TextButton_9)
end)

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
TextButton_10:SetAttribute("v", false)
TextButton_10:GetAttributeChangedSignal("v"):Connect(function()
	ies = TextButton_10:GetAttribute("v")
end)
TextButton_10.MouseButton1Click:Connect(function()
	toggle(TextButton_10)
end)

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
TextButton_11:SetAttribute("v", false)
TextButton_11:GetAttributeChangedSignal("v"):Connect(function()
	ees = TextButton_11:GetAttribute("v")
end)
TextButton_11.MouseButton1Click:Connect(function()
	toggle(TextButton_11)
end)

_2_10.Name = "2"
_2_10.Parent = TextButton_11
_2_10.CornerRadius = UDim.new(0, 10000)
Uitils:MakeDraggable(Frame, Top, 0)
Uitils:MakeDraggable(Frame, TextLabel, 0)
Uitils:MakeDraggable(Frame, Frame, 0)
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
            		v.Enabled = v:GetAttribute("e");
        	end;
    	end;
    	fbd[4]:Disconnect()
end
--// ok actual code starts here
 
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * ws/50)
        end
    end)
end)
 
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if nso == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)
 
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if it == true then
        fireproximityprompt(prompt)
    end
end)
 
local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
   
    if tostring(self) == 'Screech' and method == "FireServer" and st == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and hbw == true then
        args[2] = true
        return old(self,unpack(args))
    end
   
    return old(self,...)
end))
 
workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and st == true then
        child:Destroy()
    end
end)

function newroom()
	Esp:ClearESP()
	local newroom = game.Workspace.CurrentRooms[tostring(LatestRoom.Value)]
	local door = newroom.Door
	if des then
		
	end
	if kes then
		
	end
end
LatestRoom:GetPropertyChangedSignal("Value"):Connect(newroom)
