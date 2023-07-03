function findallchildren(object, tabe, typey)
	local chids = object:GetChildren()
	for i=1,#chids do
		findallchildren(chids[i], tabe, typey)
		if chids[i]:IsA(typey) then
			table.insert(tabe, chids[i])
		end
	end
end
local allchids = {}
local Glib = {}
function Glib:init(BackColor3, FrontColor3, TextColor3, name)
	local scrgui = Instance.new("ScreenGui")
	scrgui.Name = "Glib" .. tostring(math.random(0, 999999))
	scrgui.Parent = game.CoreGui
	local objs = {Instance.new("Frame"), Instance.new("UICorner"), Instance.new("TextLabel"), Instance.new("UICorner"), Instance.new("ScrollingFrame")}
	local cobj = objs[1]
	cobj.Position = UDim2.new(0.7,0,0.5,0)
	cobj.Size = UDim2.new(0.275,0,0.465,0)
	cobj.BackgroundColor3 = BackColor3
	cobj.Parent = scrgui
	cobj.Name = "Container"
	cobj = objs[2]
	cobj.Parent = objs[1]
	cobj = objs[3]
	cobj.Name = "Label"
	cobj.Text = name
	cobj.Parent = objs[1]
	cobj.BackgroundColor3 = FrontColor3
	cobj.TextColor3 = TextColor3
	cobj.Position = UDim2.new(0.05,0,0.05,0)
	cobj.Size = UDim2.new(0.9,0,0.125,0)
	cobj.TextScaled = true
	cobj = objs[4]
	cobj.Parent = objs[3]
	cobj = objs[5]
	cobj.Name = "toggles"
	cobj.Position = UDim2.new(0.05,0,0.2,0)
	cobj.Size = UDim2.new(0.9,0,0.75,0)
	cobj.BackgroundTransparency = 1
	cobj.CanvasSize = UDim2.new(0,0,0,0)
	cobj.AutomaticCanvasSize = Enum.AutomaticSize.XY
	cobj.Parent = objs[1]
	return cobj
end
function Glib:AddToggle(window, text, name)
	local toggle = Instance.new("TextButton")
	toggle.Name = name
	toggle.Position = UDim2.new(0,0,0,#window:GetChildren()*55)
	toggle.Parent = window
	toggle.Text = text
	toggle.Size = UDim2.new(1,0,0,50)
	toggle.TextScaled = true
	local uic = Instance.new("UICorner")
	uic.Parent = toggle
	local bool = Instance.new("BoolValue")
	bool.Name = "Checked"
	bool.Parent = toggle
	toggle.BackgroundColor3 = window.Parent.Label.BackgroundColor3
	toggle.TextColor3 = window.Parent.Label.TextColor3
	toggle.MouseButton1Click:Connect(function()
		bool.Value = not bool.Value
		if bool.Value then
			toggle.TextColor = BrickColor.Green()
		else
			toggle.TextColor3 = window.Parent.Label.TextColor3
		end
	end)
	return toggle
end
function Glib:ConnectToggle(window, togglename, func)
	window:FindFirstChild(togglename).MouseButton1Click:Connect(function()
		wait()
		func(window:FindFirstChild(togglename).Checked.Value)
	end)
end
local window = Glib:init(Color3.new(0.1,0.1,0.1),Color3.new(0.25,0.25,0.25),Color3.new(1,1,1), "Orchestra")
findallchildren(game.Workspace, allchids, "Sound")
findallchildren(game.StarterGui, allchids, "Sound")
findallchildren(game.StarterPlayer, allchids, "Sound")
findallchildren(game.ReplicatedStorage, allchids, "Sound")
findallchildren(game.ReplicatedFirst, allchids, "Sound")
for i=1, #allchids do
   local Toggle = Glib:AddToggle(window, allchids[i].Name, allchids[i].Name)
   Glib:ConnectToggle(window, allchids[i].Name, function(value)
   if value then
   allchids[i]:SetAttribute("Oldloop", allchids[i].Looped)
   allchids[i].Looped = true
   allchids[i]:Play()
   else
   allchids[i].Looped = allchids[i]:GetAttribute("Oldloop")
   allchids[i]:Stop()
   end
   end)
end

