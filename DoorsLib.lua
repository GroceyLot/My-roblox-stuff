local Lib = {}
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()

local function toggle(toggle, value) 
	if value then
		Utils:TweenPos(toggle, TweenInfo.new(0.5,Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), toggle.Position, UDim2.new(0.76, toggle.Position.X.Offset, toggle.Position.Y.Scale, toggle.Position.Y.Offset)) 
	else
		Utils:TweenPos(toggle, TweenInfo.new(0.5,Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), toggle.Position, UDim2.new(0.24, toggle.Position.X.Offset, toggle.Position.Y.Scale, toggle.Position.Y.Offset)) 
	end
end
function Lib:Window(Name, Text)
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local TextLabel = Instance.new("TextLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	ScreenGui.Name = tostring(math.random(1000000, 9999999))
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local UserInputService = game:GetService("UserInputService")

	-- Function to be executed when the keybind is triggered
	function onShiftKeyPress()
    		ScreenGui.Enabled = not ScreenGui.Enabled
	end

	-- Bind the key press event
	UserInputService.InputBegan:Connect(function(input)
    		if input.UserInputType == Enum.UserInputType.Keyboard then
        		if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
            			onShiftKeyPress()
        		end
    		end
	end)

	local Window = {Name = Name, Text = Text, ScrGuiName = ScreenGui.Name, SectionsNum = 0}
	Frame.Parent = ScreenGui
	Frame.Name = Name
	Frame.BackgroundColor3 = Color3.new(0.113725, 0.0666667, 0.0627451)
	Frame.BackgroundTransparency = 0.10000000149011612
	Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.349999994, 0, 0.150000006, 0)
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
	TextLabel.Text = Text
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
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)
	
	Uitils.MakeDraggable(Frame, Top, 0)
	
	function Window:Section(Text_1, Name_1)
		local SectionTable = {Name = Name_1, Text = Text_1, Flags = {}}
		Window.SectionsNum = Window.SectionsNum + 1
		local Section = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local ScrollingFrame_2 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local TextLabel_2 = Instance.new("TextLabel")
		local UICorner_3 = Instance.new("UICorner")
		local TextLabel_3 = Instance.new("TextLabel")
		
		Section.Name = Name
		Section.Parent = ScrollingFrame
		Section.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
		Section.BackgroundTransparency = 0.5
		Section.BorderColor3 = Color3.new(0, 0, 0)
		Section.BorderSizePixel = 0
		Section.Position = UDim2.new(-7.92006034e-08, 0, -4.27012665e-08, 0)
		Section.Size = UDim2.new(0.959999979, 0, 0.7, 0)

		UICorner_2.Parent = Section

		ScrollingFrame_2.Parent = Section
		ScrollingFrame_2.Active = true
		ScrollingFrame_2.AnchorPoint = Vector2.new(0, 0.5)
		ScrollingFrame_2.BackgroundColor3 = Color3.new(1, 1, 1)
		ScrollingFrame_2.BackgroundTransparency = 1
		ScrollingFrame_2.BorderColor3 = Color3.new(0, 0, 0)
		ScrollingFrame_2.BorderSizePixel = 0
		ScrollingFrame_2.Position = UDim2.new(0.025, 0, 0.525, 0)
		ScrollingFrame_2.Size = UDim2.new(0.949999988, 0, 0.975, 0)
		ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame_2.AutomaticCanvasSize = Enum.AutomaticSize.Y

		UIListLayout_2.Parent = ScrollingFrame_2
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 10)

		TextLabel_2.Parent = ScrollingFrame_2
		TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel_2.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
		TextLabel_2.BackgroundTransparency = 0.75
		TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel_2.BorderSizePixel = 0
		TextLabel_2.Position = UDim2.new(0.5, 0, 0.150000006, 0)
		TextLabel_2.Size = UDim2.new(1, 0, 0.200000003, 0)
		TextLabel_2.Font = Enum.Font.Oswald
		TextLabel_2.Text = ""
		TextLabel_2.TextColor3 = Color3.new(1, 0.866667, 0.737255)
		TextLabel_2.TextSize = 1
		TextLabel_2.TextWrapped = true
		TextLabel_2.Size = UDim2.new(0, TextLabel_2.AbsoluteSize.X, 0, TextLabel_2.AbsoluteSize.Y)
		UICorner_3.Parent = TextLabel_2

		TextLabel_3.Parent = TextLabel_2
		TextLabel_3.BackgroundColor3 = Color3.new(0.117647, 0.0666667, 0.0627451)
		TextLabel_3.BackgroundTransparency = 1
		TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel_3.BorderSizePixel = 0
		TextLabel_3.Position = UDim2.new(0.0227653123, 0, 0, 0)
		TextLabel_3.Size = UDim2.new(0.977234662, 0, 1, 0)
		TextLabel_3.Font = Enum.Font.Oswald
		TextLabel_3.Text = Text_1
		TextLabel_3.TextColor3 = Color3.new(1, 0.866667, 0.737255)
		TextLabel_3.TextScaled = true
		TextLabel_3.TextSize = 14
		TextLabel_3.TextWrapped = true
		TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
		
		function SectionTable:Number(Text_2, Flag, Min, Max, Default, Function)
			local Number = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local UICorner_4 = Instance.new("UICorner")
			Number.Name = Text_2
			Number.Parent = ScrollingFrame_2
			Number.AnchorPoint = Vector2.new(0.5, 0.5)
			Number.BackgroundColor3 = Color3.new(1, 1, 1)
			Number.BackgroundTransparency = 1
			Number.BorderColor3 = Color3.new(0, 0, 0)
			Number.BorderSizePixel = 0
			Number.Position = UDim2.new(0.510813534, 0, 0.37499994, 0)
			Number.Size = UDim2.new(1, 0, 0.200000003, 0)
			Number.Size = UDim2.new(0, Number.AbsoluteSize.X, 0, Number.AbsoluteSize.Y)
			Number.Font = Enum.Font.Oswald
			Number.Text = Text_2
			Number.TextColor3 = Color3.new(1, 0.866667, 0.737255)
			Number.TextScaled = true
			Number.TextSize = 14
			Number.TextWrapped = true
			Number.TextXAlignment = Enum.TextXAlignment.Left

			TextBox.Parent = Number
			TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
			TextBox.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
			TextBox.BackgroundTransparency = 0.550000011920929
			TextBox.BorderColor3 = Color3.new(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.839773953, 0, 0.500000358, 0)
			TextBox.Size = UDim2.new(0.220452294, 0, 0.800000012, 0)
			TextBox.Font = Enum.Font.Oswald
			TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
			TextBox.Text = tostring(Default)
			TextBox.TextColor3 = Color3.new(1, 0.866667, 0.737255)
			TextBox.TextScaled = true
			TextBox.TextSize = 14
			TextBox.TextWrapped = true
			SectionTable.Flags[Flag] = Default
			UICorner_4.Parent = TextBox
			TextBox:GetPropertyChangedSignal("ContentText"):Connect(function()
				local text = TextBox.ContentText
				if tonumber(text) and not (tonumber(text) > Max or tonumber(text) < Min) then
					Function(tonumber(text))
					SectionTable.Flags[Flag] = tonumber(text)
				else
					if text == "" then
						Function(0)
						SectionTable.Flags[Flag] = 0
					else
						TextBox.Text = tostring(Default)
						SectionTable.Flags[Flag] = Default
					end
				end
			end)
			return Number
		end
		function SectionTable:Toggle(Text_3, Flag_1, Default_1, Function_1)
			local Toggle = Instance.new("TextLabel")
			local Frame_2 = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local TextButton = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")
			
			Toggle.Name = Text_3
			Toggle.Parent = ScrollingFrame_2
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
			Toggle.BackgroundTransparency = 1
			Toggle.BorderColor3 = Color3.new(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0.510999978, 0, 0.600000024, 0)
			Toggle.Size = UDim2.new(1, 0, 0.200000003, 0)
			Toggle.Size = UDim2.new(0, Toggle.AbsoluteSize.X, 0, Toggle.AbsoluteSize.Y)
			Toggle.Font = Enum.Font.Oswald
			Toggle.Text = Text_3
			Toggle.TextColor3 = Color3.new(1, 0.866667, 0.737255)
			Toggle.TextScaled = true
			Toggle.TextSize = 14
			Toggle.TextWrapped = true
			Toggle.TextXAlignment = Enum.TextXAlignment.Left

			Frame_2.Parent = Toggle
			Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_2.BackgroundColor3 = Color3.new(0.670588, 0.443137, 0.388235)
			Frame_2.BackgroundTransparency = 0.550000011920929
			Frame_2.BorderColor3 = Color3.new(0, 0, 0)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = UDim2.new(0.803374469, 0, 0.50000006, 0)
			Frame_2.Size = UDim2.new(0.293251187, 0, 0.800000012, 0)

			UICorner_5.Parent = Frame_2
			UICorner_5.CornerRadius = UDim.new(0, 10000)

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
			SectionTable.Flags[Flag_1] = Default_1
			if Default_1 then
				toggle(TextButton, true)
			end
			TextButton.MouseButton1Click:Connect(function()
				SectionTable.Flags[Flag_1] = not SectionTable.Flags[Flag_1]
				toggle(TextButton, SectionTable.Flags[Flag_1])
				Function_1(SectionTable.Flags[Flag_1])
			end)

			UICorner_6.Parent = TextButton
			UICorner_6.CornerRadius = UDim.new(0, 10000)
			return Toggle
		end
		function SectionTable:Button(Text_4, Function_2)
			local Button = Instance.new("TextButton")
			local UICorner2 = Instance.new("UICorner")
			Button.Name = Text_4
			Button.Parent = ScrollingFrame_2
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.BackgroundColor3 = Color3.new(0.666667, 0.439216, 0.384314)
			Button.BackgroundTransparency = 0.8999999761581421
			Button.BorderColor3 = Color3.new(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0.5, 0, 0.850000024, 0)
			Button.Size = UDim2.new(1, 0, 0.200000003, 0)
			Button.Font = Enum.Font.Oswald
			Button.Text = Text_4
			Button.TextColor3 = Color3.new(1, 0.866667, 0.737255)
			Button.TextScaled = true
			Button.TextSize = 14
			Button.TextWrapped = true
			Button.Size = UDim2.new(0, Button.AbsoluteSize.X, 0, Button.AbsoluteSize.Y)
			UICorner2.Name = "UICorner2"
			UICorner2.Parent = Button
			
			Button.MouseButton1Click:Connect(Function_2)
			return Button
		end
		function SectionTable:FinishSize()
    			local totalHeight = 0

    			for _, child in ipairs(ScrollingFrame_2:GetChildren()) do
        			if child:IsA("GuiObject") then
            				totalHeight = totalHeight + child.Size.Y.Offset + UIListLayout_2.Padding.Offset
        			end
    			end

    			Section.Size = UDim2.new(0.96, 0, 0, totalHeight)
		end

		return SectionTable
	end
	function Window:Label(Text_5)
		local TextLabel_4 = Instance.new("TextLabel")
		TextLabel_4.Parent = ScrollingFrame
		TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel_4.BackgroundTransparency = 1
		TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel_4.BorderSizePixel = 0
		TextLabel_4.Position = UDim2.new(8.66336691e-08, 0, 0.727674305, 0)
		TextLabel_4.Size = UDim2.new(0.960000038, 0, 0.1398606, 0)
		TextLabel_4.Font = Enum.Font.Oswald
		TextLabel_4.TextColor3 = Color3.new(1, 0.866667, 0.737255)
		TextLabel_4.TextScaled = true
		TextLabel_4.TextSize = 14
		TextLabel_4.Text = Text_5
		TextLabel_4.TextWrapped = true
		return TextLabel_4
	end
	
	return Window
end

return Lib
