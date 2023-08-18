local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local esp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua"))()

local Window = OrionLib:MakeWindow({Name = "Grocey X emnab Hide and Seek Extreme", HidePremium = true, SaveConfig = true, ConfigFolder = "HIDEYSEEKY"})


function hide()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(0,500,0))
end
function killall()
	local cons = game.Players:GetChildren()
	for i=1,#cons do
		game.Players.LocalPlayer.Character:MoveTo(cons[i].Character.HumanoidRootPart.Position)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, cons[i].Character:FindFirstChild('Torso') or cons[i].Character:FindFirstChild('UpperTorso') , 0)
		wait(0.01)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, cons[i].Character:FindFirstChild('Torso') or cons[i].Character:FindFirstChild('UpperTorso'), 1)
		wait(0.01)
	end
end

local c1
local plresp
local coinesp
local c2

function refreshesp()
	esp:Clear()
	pcall(function ()
		c1:Disconnect()
	end)
	local function setupPlayerESP(player)
    	local character = player.Character
   		if character then
        	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        	local highlight = esp:AddHighlight(character, Color3.new(1, 1,1))
			local textLabel

			if character:FindFirstChild('ItScript') then
				textLabel = esp:AddText(humanoidRootPart,Color3.new(1, 0, 0), player.Name)
			else
				textLabel = esp:AddText(humanoidRootPart,Color3.new(1, 1, 1), player.Name)
			end

        	player.CharacterRemoving:Once(function()
            	highlight:Destroy()
            	textLabel:Destroy()
        	end)
    	end
	end
	if plresp then
		for _, player in pairs(game.Players:GetPlayers()) do
    		setupPlayerESP(player)
		end
		c1 = game.Players.PlayerAdded:Connect(function(player)
    		player.CharacterAdded:Once(function()
        		setupPlayerESP(player)
    		end)
		end)
	end
	if coinesp then
		for _, obj in pairs(workspace.GameObjects:GetChildren()) do
    		local highlight = esp:AddHighlight(obj, Color3.new(1, 1,0))
			local textLabel = esp:AddText(obj,Color3.new(1, 1, 0), obj.Name)

			obj.AncestryChanged:Once(function (child, parent)
				if obj.Parent == nil then
					highlight:Destroy()
            		textLabel:Destroy()
				end
			end)
		end
	end
end

function collectallcoins()
	local cons = workspace.GameObjects:GetChildren()
	for i=1,#cons do
		game.Players.LocalPlayer.Character:MoveTo(cons[i].Position)
		firetouchinterest(cons[i], game.Players.LocalPlayer.Character.Head, 0)
		wait(0.01)
		firetouchinterest(cons[i], game.Players.LocalPlayer.Character.Head, 1)
		wait(0.01)
	end
end

function trollseeker()
    local it = game.Players:FindFirstChild(game:GetService("ReplicatedStorage").GameData.It.Value)
    local itchar = it.Character
    local running = game:GetService("ReplicatedStorage").GameData.GameRunning
    
    local localPlayer = game.Players.LocalPlayer
    local playerCharacter = localPlayer.Character
    
	local old = Vector3.new(0,0,1)

    while running.Value do
        if itchar and playerCharacter then
			playerCharacter.HumanoidRootPart.Anchored = true
            local itPosition = itchar.PrimaryPart.Position
            local playerPosition = playerCharacter.PrimaryPart.Position
            
            local direction = itchar.Humanoid.MoveDirection
            if direction.Magnitude > 0 then
				old = direction
				local teleportPosition = itPosition + (direction * 30)
            	localPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
			else
				local teleportPosition = itPosition + (old * 30)
				localPlayer.Character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
			end
        end
        
        wait(0.075) -- Adjust the wait time as needed
    end
end

function round()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	if game.ReplicatedStorage.GameData.GameRunning.Value ~= true then
		return
	end
	if  _G.AutoFarm ~= true then
		return
	end
	if game:GetService("ReplicatedStorage").GameData.It.Value == game.Players.LocalPlayer.Name then
		repeat wait(0.1) until game:GetService("ReplicatedStorage").GameData.ItSeeking.Value
		wait(2)
		collectallcoins()
		wait(0.2)
		killall()
	else
		collectallcoins()
		wait(0.2)
		trollseeker()
	end
end

game.ReplicatedStorage.GameData.GameRunning:GetPropertyChangedSignal("Value"):Connect(round)

local ws = 16
local jp = 50
local flypos = Vector3.new(0,0,0)
local flying = false
local flySpeed = 25
local input = game:GetService("UserInputService")
local function UpdateFlying()
	pcall(function ()
    if flying then
        local camera = game.Workspace.CurrentCamera
        local moveDirection = Vector3.new(0, 0, 0)

        if input:IsKeyDown(Enum.KeyCode.W) then
            moveDirection = moveDirection + camera.CFrame.LookVector
        end

        if input:IsKeyDown(Enum.KeyCode.S) then
            moveDirection = moveDirection - camera.CFrame.LookVector
        end

        if input:IsKeyDown(Enum.KeyCode.A) then
            moveDirection = moveDirection - camera.CFrame.RightVector
        end

        if input:IsKeyDown(Enum.KeyCode.D) then
            moveDirection = moveDirection + camera.CFrame.RightVector
        end

        if input:IsKeyDown(Enum.KeyCode.E) then
            moveDirection = moveDirection + Vector3.new(0, 1, 0)
        end

        if input:IsKeyDown(Enum.KeyCode.Q) then
            moveDirection = moveDirection - Vector3.new(0, 1, 0)
        end
	FlyPos = FlyPos + (moveDirection * (flySpeed/25))
	game.Players.LocalPlayer.Character:MoveTo(FlyPos)
    end
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
game:GetService("RunService").Heartbeat:Once(UpdateFlying)
end)
end
game:GetService("RunService").Heartbeat:Once(UpdateFlying)

local Tab = Window:MakeTab({
    Name = "Game",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab3 = Window:MakeTab({
    Name = "Troll",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Tab4 = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


Tab:AddToggle({
    Name = "AutoFarm",
    Default = false,
    Callback = function(Value)
        pcall(function()
            _G.AutoFarm = Value
        end)
    end    
})

Tab:AddButton({
    Name = "Collect All Coins",
    Callback = function()
        pcall(function()
            collectallcoins()
        end)
    end    
})

Tab:AddButton({
    Name = "Find All",
    Callback = function()
        pcall(function()
            killall()
        end)
    end    
})

Tab:AddButton({
    Name = "Hide above map",
    Callback = function()
        pcall(function()
            hide()
        end)
    end    
})

Tab2:AddToggle({
    Name = "Player",
    Default = false,
    Callback = function(Value)
        pcall(function()
            plresp = Value
            refreshesp()
        end)
    end    
})

Tab2:AddToggle({
    Name = "Coins/Glue/Cameras",
    Default = false,
    Callback = function(Value)
        pcall(function()
            coinesp = Value
            refreshesp()
        end)
    end    
})

Tab3:AddButton({
    Name = "Troll It for this round",
    Callback = function()
        pcall(function()
            trollseeker()
        end)
    end    
})

Tab4:AddSlider({
	Name = "Walking",
	Min = 0,
	Max = 300,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
		ws = Value
	end    
})
Tab4:AddSlider({
	Name = "Jumping",
	Min = 0,
	Max = 400,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "power",
	Callback = function(Value)
		jp = Value
	end    
})
Tab4:AddToggle({
    Name = "Fly",
    Default = false,
    Callback = function(Value)
       flying = Value
	   FlyPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end    
})
Tab4:AddSlider({
	Name = "Flying",
	Min = 0,
	Max = 300,
	Default = 25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
		flySpeed = Value
	end    
})
while true do
	wait(1)
	refreshesp()
end
