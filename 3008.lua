

local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Lib = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/DoorsLib.lua"))()

local Window = Lib:Window("PL", "Grocey - 3008")

local Player = Window:Section("Player", "PLR")
local Visuals = Window:Section("Visuals", "VSL")
local ws = 16
local fv = 90
local Esp = Window:Section("ESP", "ESP")
local esp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/Esp2.lua"))()
local Eesp = false
local Pesp = false
local Iesp = false

local flySpeed = 25
local flying = false

function startesp()
	esp:Clear()
	if Eesp then
		local Employees = game:GetService("Workspace").GameObjects.Physical.Employees:GetChildren()
		for i=1,#Employees do
			esp:AddHighlight(Employees[i], Color3.new(0.25, 0.2, 1))
			esp:AddText(Employees[i], Color3.new(0.25, 0.2, 1), "Employee")
		end
	end
	if Iesp then
		local Employees = game:GetService("Workspace").GameObjects.Physical.Items:GetChildren()
		for i=1,#Employees do
			esp:AddHighlight(Employees[i], Color3.new(1,0.5,0.5))
			esp:AddText(Employees[i], Color3.new(1,0.5,0.5), Employees[i].Name)
		end
	end
	if Pesp then
		local Employees = game:GetService("Workspace").GameObjects.Physical.Players:GetChildren()
		for i=1,#Employees do
			if Employees[i].Name ~= game.Players.LocalPlayer.Name then
				esp:AddText(Employees[i], Color3.new(0.5,1,0.5), Employees[i].Name)
			end
		end
	end
end

local tog = Player:Toggle("Fly+Noclip (H)", "FY", false, function(val)
    flying = val
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = val
end)
local input = game:GetService("UserInputService")
local function UpdateFlying()
    if flying then
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
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

        if input:IsKeyDown(Enum.KeyCode.Space) then
            moveDirection = moveDirection + Vector3.new(0, 1, 0)
        end

        if input:IsKeyDown(Enum.KeyCode.LeftControl) then
            moveDirection = moveDirection - Vector3.new(0, 1, 0)
        end
	game.Players.LocalPlayer.Character:TranslateBy(moveDirection * (flySpeed/25))
    end
if input:IsKeyDown(Enum.KeyCode.H) then
        flying = not flying
	tog:Toggle(flying)
    end
end

Player:Number("Flyspeed", "FS", 0, 300, 25, function(val)
    flySpeed = val
end)
local Noclip = nil
local Clip = nil

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        end
        wait(0.21) -- basic optimization
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then Noclip:Disconnect() end
    Clip = true
end

Player:Toggle("Noclip", "N", false, function(val)
    if val then
        noclip()
    else
        clip()
    end
end)

Player:Number("Walkspeed", "WS", 0, 1000, game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, function(val)
    ws = val
end)
Player:Toggle("No fall damage", "FD", false, function(val)
    pcall(function()
        if val then
            game.Players.LocalPlayer.Character.FallDamage.Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage.FallDamage.Parent = game.Players.LocalPlayer.Character
        end
    end)
end)

Visuals:Number("Fov", "FV", 0, 120, math.round(game.Workspace.CurrentCamera.FieldOfView), function(val)
    fv = val
end)

Visuals:Toggle("No camera shake", "CS", false, function(val)
    pcall(function()
        if val then
            game.Players.LocalPlayer.PlayerScripts.source.CameraShake.Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage.CameraShake.Parent = game.Players.LocalPlayer.PlayerScripts.source
        end
    end)
end)

Visuals:Toggle("Fullbright", "FB", false, function(val)
    pcall(function()
        if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
    end)
end)

Esp:Toggle("Employees", "ES", false, function(val)
    Eesp = val
	startesp()
end)
Esp:Toggle("Players", "RS", false, function(val)
    Pesp = val
	startesp()
end)
Esp:Toggle("Items", "IS", false, function(val)
    Iesp = val
	startesp()
end)

-- Connect to changes in the val variable to update flying mode
game:GetService("RunService").Heartbeat:Connect(UpdateFlying)

Player:FinishSize()
Visuals:FinishSize()
Esp:FinishSize()

game:GetService("Workspace").GameObjects.Physical.Employees.ChildAdded:Connect(function(c)
	if Eesp then
		esp:AddHighlight(c, Color3.new(0.25, 0.2, 1))
		esp:AddText(c, Color3.new(0.25, 0.2, 1), "Employee")
	end
end)
game:GetService("Workspace").GameObjects.Physical.Items.ChildAdded:Connect(function(c)
	if Eesp then
		esp:AddHighlight(c, Color3.new(1,0.5,0.5))
		esp:AddText(c, Color3.new(1,0.5,0.5), c.Name)
	end
end)
game:GetService("Workspace").GameObjects.Physical.Players.ChildAdded:Connect(function(c)
	if Pesp then
		if c.Name ~= game.Players.LocalPlayer.Name then
			esp:AddText(c, Color3.new(0.5,1,0.5), c.Name)
		end
	end
end)

while true do
	wait()
	game.Workspace.CurrentCamera.FieldOfView = fv
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end
