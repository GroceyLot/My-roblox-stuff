game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] ServerSide executor ran, waiting for connections")

local plrs = {}

game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(ms)
	if ms.Text == "[GSX Internal] Recieved connection request, adding to playerlist" then
		table.insert(plrs, ms.TextSource)
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
	end
	if ms.Text == "[GSX Internal] ServerSide executor ran, waiting for connections" then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved connection request, adding to playerlists")
		table.insert(plrs, ms.TextSource)
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
	end
	for i=1, #plrs do
		if plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Script send request" then
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script, running")
			loadstring(ms.MetaData)
		end
	end
end)

-- Instances

local GroceysServerSideExecutor = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local Frame_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Frame_4 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextLabel_2 = Instance.new("TextLabel")

-- Properties

GroceysServerSideExecutor.Name = "GroceysServerSideExecutor"
GroceysServerSideExecutor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GroceysServerSideExecutor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = GroceysServerSideExecutor
Frame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.299837917, 0, 0.25, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.784314, 1, 0)
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(1, 0, 0.100000001, 0)

UICorner.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0145867094, 0, 0, 0)
TextLabel.Size = UDim2.new(0.985413313, 0, 1, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Grocey's Server-Side Executor"
TextLabel.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.100000001, 0)
ScrollingFrame.Size = UDim2.new(0.800000012, 0, 0.899999976, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

TextBox.Parent = ScrollingFrame
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 1, 0)
TextBox.TextSize = 25
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
	TextBox.Size = UDim2.new(0, TextBox.TextBounds.X, 0, TextBox.TextBounds.Y)
end)

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.800000012, 0, 0.100000001, 0)
Frame_3.Size = UDim2.new(0.200000003, 0, 0.899999976, 0)

UICorner_3.Parent = Frame_3

Frame_4.Parent = Frame_3
Frame_4.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_4.BackgroundTransparency = 1
Frame_4.BorderColor3 = Color3.new(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0, 0, 0.755892277, 0)
Frame_4.Size = UDim2.new(1, 0, 0.244107768, 0)

UIListLayout.Parent = Frame_4
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.100000001, 0)

TextButton.Parent = Frame_4
TextButton.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 0.400000006, 0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Run"
TextButton.TextColor3 = Color3.new(0.784314, 1, 0.588235)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
	loadstring(TextBox.ContentText)
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script send request", TextBox.ContentText)
end)

TextButton_2.Parent = Frame_4
TextButton_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
TextButton_2.BorderColor3 = Color3.new(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Size = UDim2.new(1, 0, 0.400000006, 0)
TextButton_2.Font = Enum.Font.FredokaOne
TextButton_2.Text = "Clear"
TextButton_2.TextColor3 = Color3.new(0.784314, 1, 0.588235)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:Connect(function()
	TextBox.Text = ""
end)

ScrollingFrame_2.Parent = Frame_3
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame_2.BackgroundTransparency = 1
ScrollingFrame_2.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(0.99999994, 0, 0.735690236, 0)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_2.Parent = ScrollingFrame_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0199999996, 0)

TextLabel_2.Parent = ScrollingFrame_2
TextLabel_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(1, 0, 0.150000006, 0)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Players:"
TextLabel_2.TextColor3 = Color3.new(0.784314, 1, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

while true do
	for	i=1,#ScrollingFrame_2:GetChildren() do
		if ScrollingFrame_2:GetChildren()[i].Name == "Player" then
			ScrollingFrame_2:GetChildren()[i]:Destroy()
		end
	end
	for i=1,#plrs do
		local Player = Instance.new("TextLabel")
		Player.Name = "Player"
		Player.Parent = ScrollingFrame_2
		Player.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
		Player.BorderColor3 = Color3.new(0, 0, 0)
		Player.BorderSizePixel = 0
		Player.Size = UDim2.new(1, 0, 0.125, 0)
		Player.Font = Enum.Font.FredokaOne
		Player.Text = plrs[i].Name
		Player.TextColor3 = Color3.new(0.392157, 0.498039, 0)
		Player.TextScaled = true
		Player.TextSize = 14
		Player.TextWrapped = true
	end
	wait(1)
end
