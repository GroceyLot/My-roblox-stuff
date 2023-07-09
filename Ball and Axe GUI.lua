local player = game.Players.LocalPlayer
local axe = game.Workspace.playerModels:FindFirstChild(player.Name).axe -- Assuming the axe is a child of the player's character
local part
local plat = false
local trans = 0
local down = false
local up, down, right, left, flying = false, false, false, false, false
local shape = 0
local speed = 50
local parts = Instance.new("Folder")
parts.Name = "HackyHack"
parts.Parent = workspace
local function onMouseButton1Down()
    if plat then
        down = true
        part = Instance.new("Part")
        part.Name = "FollowPart"
        part.Transparency = trans / 100
        part.Anchored = true
        part.Size = Vector3.new(100, 5, 5)
        if shape == 1 then
            part.Size = Vector3.new(5, 5, 5) -- Adjust the size as desired
        end
        if shape == 2 then
            part.Size = Vector3.new(5, 1, 5)
        end
        part.BrickColor = BrickColor.new("Bright red") -- Adjust the color as desired
        part.Parent = parts
        local position = axe.Position
        axe.Parent.ball.CanCollide = false
        if shape == 2 then
            part.Position = Vector3.new(position.x, position.y - 1, position.z)
        else
            part.Position = Vector3.new(position.x, position.y - 2.5, position.z)
        end
    end
end

local function onMouseButton1Up()
    part:Destroy()
    parts:ClearAllChildren()
    axe.Parent.ball.CanCollide = true
    part = nil
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        onMouseButton1Down()
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        onMouseButton1Up()
    end
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ball and Axe - Grocey", HidePremium = false, SaveConfig = true, ConfigFolder = "GroceyAXYBALLS"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local VisTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlatSection = PlayerTab:AddSection({
	Name = "Platforms"
})
local DotSection = VisTab:AddSection({
	Name = "Dot"
})
local PlayerSection = VisTab:AddSection({
	Name = "Player"
})
PlatSection:AddToggle({
	Name = "Enabled",
	Default = false,
	Callback = function(Value)
		plat = Value
	end    
})
PlatSection:AddDropdown({
	Name = "Shape",
	Default = "Long",
	Options = {"Long",  "Cube", "Platform"},
	Callback = function(t)
		if t == "Long" then
        	shape = 0
    	elseif t == "Cube" then
        	shape = 1
    	elseif t == "Platform" then
        	shape = 2
    	end
	end    
})
PlatSection:AddSlider({
	Name = "Transparency",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Transparency",
	Callback = function(t)
		trans = t
	end    
})
PlayerTab:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 100,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(t)
		game.Workspace.Gravity = t
	end    
})
DotSection:AddColorpicker({
	Name = "Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		if game.Workspace.ind:FindFirstChild("Highlight") then
			game.Workspace.ind:FindFirstChild("Highlight"):Destroy()
		end
		game.Workspace.ind.Color = Value
	end	  
})
DotSection:AddSlider({
	Name = "Transparency",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Transparency",
	Callback = function(t)
		game.Workspace.ind.Transparency = t / 100
	end    
})
PlayerSection:AddColorpicker({
	Name = "Player Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		axe.Parent.ball.Color = Value
	end	  
})

