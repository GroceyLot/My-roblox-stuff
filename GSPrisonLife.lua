
local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Lib = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/DoorsLib.lua"))()

local Window = Lib:Window("PL", "Grocey - Prison Life")

local Player = Window:Section("Player", "PLR")
local Combat = Window:Section("Combat", "CBT")
local World = Window:Section("World", "WOD")

local flySpeed = 25
local flying = false

local function UpdateFlying()
    if flying then
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        local camera = game.Workspace.CurrentCamera
        local moveDirection = Vector3.new(0, 0, 0)

        local input = game:GetService("UserInputService")

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

		game.Players.LocalPlayer.Character:TranslateBy(moveDirection * (flySpeed/25))
    end
end


Player:Toggle("Fly+Noclip", "FY", false, function(val)
    flying = val
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = val
end)

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

Player:Number("Fov", "FV", 0, 120, math.round(game.Workspace.CurrentCamera.FieldOfView), function(val)
	game.Workspace.CurrentCamera.FieldOfView = val
end)
Player:Number("Walkspeed", "WS", 0, 1000, game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, function(val)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

-- Connect to changes in the val variable to update flying mode
game:GetService("RunService").Heartbeat:Connect(UpdateFlying)

local killing = false

Combat:Toggle("Loop Kill All", "LK", false, function(val)
    killing = val
end)

function ting()
   if killing then
      local plrs = game.Players:GetChildren()
      for i=1,#plrs do
         pcall(function()
         local char = game.Players.LocalPlayer.Character
         if plrs[i].Character:FindFirstChild("HumanoidRootPart") then
            if plrs[i] ~= game.Players.LocalPlayer then
               for j=1,30 do
                  char:MoveTo(plrs[i].Character.HumanoidRootPart.Position)
                  game.ReplicatedStorage.meleeEvent:FireServer(plrs[i])
                  wait(0.0001)
               end
            end
            wait(0.1)
         end
         end)
         if not killing then
            game.RunService.Heartbeat:Once(ting)
            return
         end
      end
   end
   game.RunService.Heartbeat:Once(ting)
end
game.RunService.Heartbeat:Once(ting)

World:Toggle("Remove Fences", "RF", false, function(val)
    pcall(function()
        if val then 
            game:GetService("Workspace")["Prison_Fences"].Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage["Prison_Fences"].Parent = game.Workspace
        end
    end)
end)
World:Toggle("Remove Doors", "RD", false, function(val)
    pcall(function()
        if val then 
            game:GetService("Workspace")["Doors"].Parent = game.ReplicatedStorage
        else
            game.ReplicatedStorage["Doors"].Parent = game.Workspace
        end
    end)
end)

Player:FinishSize()
Combat:FinishSize()
World:FinishSize()
