local Lib = {
  AccentColour = Color3.new(216,61,255)
}
local Utils = 
function Lib:Initialize()
  local MainGHubUI = Instance.new("ScreenGui")
  local Executor = Instance.new("Frame")
local BoxContainer = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local ButtonsContainer = Instance.new("Frame")
local Run = Instance.new("ImageButton")
local Reset = Instance.new("ImageButton")
local TOPBar_2 = Instance.new("Frame")
local Text_2 = Instance.new("TextLabel")
local Arrow_2 = Instance.new("ImageButton")
local UICorner_10 = Instance.new("UICorner")

-- Properties

MainGHubUI.Name = "MainGHubUI"
MainGHubUI.Parent = game.CoreGui
MainGHubUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Executor.Name = "Executor"
Executor.Parent = MainGHubUI
Executor.BackgroundColor3 = Color3.new(1, 1, 1)
Executor.BackgroundTransparency = 1
Executor.BorderColor3 = Color3.new(0, 0, 0)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.300000072, 0, 0.0390000008, 0)
Executor.Size = UDim2.new(0.38499999, 0, 0.0399999991, 0)

BoxContainer.Name = "BoxContainer"
BoxContainer.Parent = Executor
BoxContainer.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
BoxContainer.BorderColor3 = Color3.new(0, 0, 0)
BoxContainer.BorderSizePixel = 0
BoxContainer.Size = UDim2.new(1, 0, 13, 0)

UICorner_9.Parent = BoxContainer

ScrollingFrame_2.Parent = BoxContainer
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ScrollingFrame_2.BackgroundTransparency = 1
ScrollingFrame_2.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0.00999999978, 0, 0.075000003, 2)
ScrollingFrame_2.Size = UDim2.new(0.899999976, 0, 0.878000021, 0)
ScrollingFrame_2.CanvasSize = UDim2.new(2, 0, 5, 0)

TextBox.Parent = ScrollingFrame_2
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0.975000024, 0, 0.975000024, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.921569, 0.619608, 1)
TextBox.TextSize = 20
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

ButtonsContainer.Name = "ButtonsContainer"
ButtonsContainer.Parent = BoxContainer
ButtonsContainer.BackgroundColor3 = Color3.new(1, 1, 1)
ButtonsContainer.BackgroundTransparency = 1
ButtonsContainer.BorderColor3 = Color3.new(0, 0, 0)
ButtonsContainer.BorderSizePixel = 0
ButtonsContainer.Position = UDim2.new(0.915000021, 0, 0.075000003, 2)
ButtonsContainer.Size = UDim2.new(0.0799999982, 0, 0.878000021, 0)

Run.Name = "Run"
Run.Parent = ButtonsContainer
Run.BackgroundColor3 = Color3.new(1, 1, 1)
Run.BackgroundTransparency = 1
Run.BorderColor3 = Color3.new(0, 0, 0)
Run.BorderSizePixel = 0
Run.Size = UDim2.new(1, 0, 0.131999999, 0)
Run.Image = "rbxassetid://14186467868"

Reset.Name = "Reset"
Reset.Parent = ButtonsContainer
Reset.BackgroundColor3 = Color3.new(1, 1, 1)
Reset.BackgroundTransparency = 1
Reset.BorderColor3 = Color3.new(0, 0, 0)
Reset.BorderSizePixel = 0
Reset.Position = UDim2.new(0, 0, 0.131999999, 0)
Reset.Size = UDim2.new(1, 0, 0.131999999, 0)
Reset.Image = "rbxassetid://14186459592"

TOPBar_2.Name = "TOPBar"
TOPBar_2.Parent = Executor
TOPBar_2.BackgroundColor3 = Color3.new(0.847059, 0.239216, 1)
TOPBar_2.BorderColor3 = Color3.new(0, 0, 0)
TOPBar_2.BorderSizePixel = 0
TOPBar_2.Size = UDim2.new(1, 0, 1, 0)
TOPBar_2.ZIndex = 2

Text_2.Name = "Text"
Text_2.Parent = TOPBar_2
Text_2.BackgroundColor3 = Color3.new(1, 1, 1)
Text_2.BackgroundTransparency = 1
Text_2.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
Text_2.Size = UDim2.new(0.959999979, 0, 0.959999979, 0)
Text_2.Font = Enum.Font.Cartoon
Text_2.Text = "Executor"
Text_2.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Text_2.TextScaled = true
Text_2.TextSize = 14
Text_2.TextWrapped = true
Text_2.TextXAlignment = Enum.TextXAlignment.Left

Arrow_2.Name = "Arrow"
Arrow_2.Parent = TOPBar_2
Arrow_2.BackgroundColor3 = Color3.new(1, 1, 1)
Arrow_2.BackgroundTransparency = 1
Arrow_2.BorderColor3 = Color3.new(0, 0, 0)
Arrow_2.BorderSizePixel = 0
Arrow_2.Position = UDim2.new(0.949000001, 0, 0.0500000007, 0)
Arrow_2.Size = UDim2.new(0.0511826649, 0, 0.950000107, 0)
Arrow_2.Image = "http://www.roblox.com/asset/?id=278544479"

UICorner_10.Parent = TOPBar_2
end
