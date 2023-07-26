local Lib = {
	AccentColour = Color3.new(0.847059, 0.239216, 1),
	MainGui = nil
}
local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
function Lib:Initialize(color)
	local MainGHubUI = Instance.new("ScreenGui")
	Lib["MainGui"] = MainGHubUI
	Lib["AccentColour"] = color
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
	local ObjToggles = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local ImageButton_2 = Instance.new("ImageButton")
local ImageButton_3 = Instance.new("ImageButton")
local ImageButton_4 = Instance.new("ImageButton")

-- Properties

ObjToggles.Name = "ObjToggles"
ObjToggles.Parent = MainGHubUI
ObjToggles.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ObjToggles.BorderColor3 = Color3.new(0, 0, 0)
ObjToggles.BorderSizePixel = 0
ObjToggles.Position = UDim2.new(0.682692289, 0, 0.877906978, 0)
ObjToggles.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)

UICorner.Parent = ObjToggles

ImageButton.Parent = ObjToggles
ImageButton.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton.BackgroundTransparency = 1
ImageButton.BorderColor3 = Color3.new(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0841716304, 0, 0.0500000343, 0)
ImageButton.Size = UDim2.new(0.151999995, 0, 0.899999976, 0)
ImageButton.Image = "http://www.roblox.com/asset/?id=8382597378"
ImageButton.MouseButton1Click:Connect(function()
	Executor.Enabled = not Executor.Enabled
end)

ImageButton_2.Parent = ObjToggles
ImageButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton_2.BackgroundTransparency = 1
ImageButton_2.BorderColor3 = Color3.new(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.304240823, 0, 0.0500000343, 0)
ImageButton_2.Size = UDim2.new(0.170414165, 0, 0.899999917, 0)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=11663743444"

ImageButton_3.Parent = ObjToggles
ImageButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton_3.BackgroundTransparency = 1
ImageButton_3.BorderColor3 = Color3.new(0, 0, 0)
ImageButton_3.BorderSizePixel = 0
ImageButton_3.Position = UDim2.new(0.539102793, 0, 0.0500000343, 0)
ImageButton_3.Size = UDim2.new(0.153155804, 0, 0.899999917, 0)
ImageButton_3.Image = "http://www.roblox.com/asset/?id=11553500285"

ImageButton_4.Parent = ObjToggles
ImageButton_4.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton_4.BackgroundTransparency = 1
ImageButton_4.BorderColor3 = Color3.new(0, 0, 0)
ImageButton_4.BorderSizePixel = 0
ImageButton_4.Position = UDim2.new(0.771498919, 0, 0.0500000343, 0)
ImageButton_4.Size = UDim2.new(0.15562129, 0, 0.899999917, 0)
ImageButton_4.Image = "http://www.roblox.com/asset/?id=7276831044"

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
	Run.MouseButton1Click:Connect(
		function()
			loadstring(TextBox.ContentText)()
		end
	)

	Reset.Name = "Reset"
	Reset.Parent = ButtonsContainer
	Reset.BackgroundColor3 = Color3.new(1, 1, 1)
	Reset.BackgroundTransparency = 1
	Reset.BorderColor3 = Color3.new(0, 0, 0)
	Reset.BorderSizePixel = 0
	Reset.Position = UDim2.new(0, 0, 0.131999999, 0)
	Reset.Size = UDim2.new(1, 0, 0.131999999, 0)
	Reset.Image = "rbxassetid://14186459592"
	Reset.MouseButton1Click:Connect(
		function()
			TextBox.Text = ""
		end
	)

	TOPBar_2.Name = "TOPBar"
	TOPBar_2.Parent = Executor
	TOPBar_2.BackgroundColor3 = Lib["AccentColour"]
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
	Arrow_2.MouseButton1Click:Connect(
		function()
			local done = false
			if BoxContainer.Size == UDim2.new(1, 0, 13, 0) then
				Utils:TweenSize(
					BoxContainer,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					UDim2.new(1, 0, 13, 0),
					UDim2.new(1, 0, 0.01, 0)
				)
				Utils:TweenRotation(
					Arrow_2,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					0,
					90
				)
				wait(0.5)
				BoxContainer.Visible = false
				done = true
			end
			if BoxContainer.Visible == false and done == false then
				Utils:TweenSize(
					BoxContainer,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					UDim2.new(1, 0, 0.01, 0),
					UDim2.new(1, 0, 13, 0)
				)
				Utils:TweenRotation(
					Arrow_2,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					90,
					0
				)
				BoxContainer.Visible = true
			end
		end
	)

	UICorner_10.Parent = TOPBar_2
	Uitils.MakeDraggable(Executor, TOPBar_2, 0)
	Uitils.MakeDraggable(Executor, Text_2, 0)
end
function Lib:Panel(Height, Name, TextTop)
	if Lib["MainGui"] == nil then
		error("No library, use library:Initialize() before adding panels")
	end
	local Panel = Instance.new("Frame")
	local SCRContainer = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local TOPBar = Instance.new("Frame")
	local Text = Instance.new("TextLabel")
	local Arrow = Instance.new("ImageButton")
	local UICorner_8 = Instance.new("UICorner")

	Panel.Name = Name
	Panel.Parent = Lib["MainGui"]
	Panel.BackgroundColor3 = Color3.new(1, 1, 1)
	Panel.BackgroundTransparency = 1
	Panel.BorderColor3 = Color3.new(0, 0, 0)
	Panel.BorderSizePixel = 0
	Panel.Position = UDim2.new(0.0465976335, 0, 0.0388978943, 0)
	Panel.Size = UDim2.new(0.125, 0, 0.0399999991, 0)

	SCRContainer.Name = "SCRContainer"
	SCRContainer.Parent = Panel
	SCRContainer.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	SCRContainer.BorderColor3 = Color3.new(0, 0, 0)
	SCRContainer.BorderSizePixel = 0
	SCRContainer.Size = UDim2.new(1, 0, 1, Height)

	UICorner.Parent = SCRContainer

	ScrollingFrame.Parent = SCRContainer
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.00999999978, 0, 0.100000001, 2)
	ScrollingFrame.Size = UDim2.new(0.980000019, 0, 0.870000005, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

	TOPBar.Name = "TOPBar"
	TOPBar.Parent = Panel
	TOPBar.BackgroundColor3 = Lib["AccentColour"]
	TOPBar.BorderColor3 = Color3.new(0, 0, 0)
	TOPBar.BorderSizePixel = 0
	TOPBar.Size = UDim2.new(1, 0, 1, 0)
	TOPBar.ZIndex = 2

	Text.Name = "Text"
	Text.Parent = TOPBar
	Text.BackgroundColor3 = Color3.new(1, 1, 1)
	Text.BackgroundTransparency = 1
	Text.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
	Text.Size = UDim2.new(0.959999979, 0, 0.959999979, 0)
	Text.Font = Enum.Font.Cartoon
	Text.Text = TextTop
	Text.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Text.TextScaled = true
	Text.TextSize = 14
	Text.TextWrapped = true
	Text.TextXAlignment = Enum.TextXAlignment.Left

	Arrow.Name = "Arrow"
	Arrow.Parent = TOPBar
	Arrow.BackgroundColor3 = Color3.new(1, 1, 1)
	Arrow.BackgroundTransparency = 1
	Arrow.BorderColor3 = Color3.new(0, 0, 0)
	Arrow.BorderSizePixel = 0
	Arrow.Position = UDim2.new(0.839999974, 0, 0.0500000007, 0)
	Arrow.Size = UDim2.new(0.159999996, 0, 0.949999988, 0)
	Arrow.Image = "http://www.roblox.com/asset/?id=278544479"
	Arrow.MouseButton1Click:Connect(
		function()
			if SCRContainer.Size == UDim2.new(1, 0, 1, Height) then
				Utils:TweenSize(
					SCRContainer,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					UDim2.new(1, 0, 1, Height),
					UDim2.new(1, 0, 0.01, 0)
				)
				Utils:TweenRotation(
					Arrow,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					0,
					90
				)
				wait(0.5)
				SCRContainer.Enabled = false
			else
				Utils:TweenSize(
					SCRContainer,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					UDim2.new(1, 0, 0.01, 0),
					UDim2.new(1, 0, 1, Height)
				)
				Utils:TweenRotation(
					Arrow,
					TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
					90,
					0
				)
				SCRContainer.Enabled = true
			end
		end
	)

	UICorner_8.Parent = TOPBar
	local PanelTable = {
		PanelUI = Panel,
	}
	function PanelTable:Toggle(Text, Name, TriggeredDefault, Function)
		local Toggle = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local Frame = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local Triggered = Instance.new("BoolValue")
		local frame = PanelTable["PanelUI"].SCRContainer.ScrollingFrame
		local framechids = frame:GetChildren()
		local Twenfo = TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		Toggle.Parent = frame
		Toggle.Name = Name
		Toggle.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		Toggle.BorderColor3 = Color3.new(0, 0, 0)
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0, 0, 0, (#framechids * 35) + (#framechids * 2) + Panel.AbsoluteSize.Y)
		Toggle.Size = UDim2.new(1, 0, 0, 35)
		Toggle.Font = Enum.Font.Cartoon
		Toggle.Text = Text
		Toggle.TextColor3 = Color3.new(1, 1, 1)
		Toggle.TextScaled = true
		Toggle.TextWrapped = true

		Triggered.Parent = Toggle
		Triggered.Value = TriggeredDefault

		UICorner_2.Parent = Toggle

		Frame.Parent = Toggle
		Frame.BackgroundColor3 = Lib.AccentColour
		if Triggered.Value == false then
			Frame.BackgroundTransparency = 1
		end
		Frame.BorderColor3 = Color3.new(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0.0299999993, 0, 1, 0)

		UICorner_3.Parent = Frame
		Toggle.MouseButton1Click:Connect(function()
			Triggered.Value = not Triggered.Value
			if Triggered.Value == true then
				Utils:TweenObject(Frame, Twenfo, {BackgroundTransparency = 0})
				Utils:TweenObject(Toggle, Twenfo, {TextColor3 = Lib["AccentColour"]})
			else
				Utils:TweenObject(Frame, Twenfo, {BackgroundTransparency = 1})
				Utils:TweenObject(Toggle, Twenfo, {TextColor3 = Color3.new(1,1,1)})
			end
			Function(Triggered.Value)
		end)
	end
	function PanelTable:Button(Text, Name, Function)
		local Toggle = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local frame = PanelTable["PanelUI"].SCRContainer.ScrollingFrame
		local framechids = frame:GetChildren()
		Toggle.Parent = frame
		Toggle.Name = Name
		Toggle.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		Toggle.BorderColor3 = Color3.new(0, 0, 0)
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0, 0, 0, (#framechids * 35) + (#framechids * 2) + Panel.AbsoluteSize.Y)
		Toggle.Size = UDim2.new(1, 0, 0, 35)
		Toggle.Font = Enum.Font.Cartoon
		Toggle.Text = Text
		local r = ((1 - Lib.AccentColour.R) / 2) + Lib.AccentColour.R
		local g = ((1 - Lib.AccentColour.G) / 2) + Lib.AccentColour.G
		local b = ((1 - Lib.AccentColour.B) / 2) + Lib.AccentColour.B
		Toggle.TextColor3 = Color3.new(r,g,b)
		Toggle.TextScaled = true
		Toggle.TextWrapped = true

		UICorner_2.Parent = Toggle
		Toggle.MouseButton1Click:Connect(Function)
		
	end
	Uitils.MakeDraggable(Panel, TOPBar, 0)
	Uitils.MakeDraggable(Panel, Text, 0)
	return PanelTable
end
return Lib
