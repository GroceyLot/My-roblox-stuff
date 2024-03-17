local Config = {Speed = 20,FullBright = true,Esp = true,DoorCol = Color3.new(1,1,0),God = true}
local CR = workspace.CurrentRooms
local LR = game:GetService("ReplicatedStorage").GameData.LatestRoom
local SGui = Instance.new("ScreenGui")
SGui.Parent = game.CoreGui
local Plr = game.Players.LocalPlayer
local Char = Plr.Character
local EspLib = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua"))()
function DoEsp()
    EspLib:Clear()
    if Config.Esp then
        EspLib:AddHighlight(CR[tostring(LR.Value)].Door, Config.DoorCol)
        EspLib:AddText(CR[tostring(LR.Value)].Door.Sign, Config.DoorCol, "Door: "..tostring(LR.Value+1))
        if workspace:FindFirstChild("BackdoorRush") then
              EspLib:AddHighlight(workspace:FindFirstChild("BackdoorRush"), Color3.new(1,0,0))
        end
    end
end
game.RunService.Heartbeat:Connect(function()
    Char.Humanoid.WalkSpeed = Config.Speed
    if Config.FullBright then
        game.Lighting.Brightness = 1
        game.Lighting.FogEnd = 78654
        game.Lighting.ClockTime = 12
    end
    if Config.God then
        Char.Collision.Position = Char.HumanoidRootPart.Position - Vector3.new(0,10,0)
        Char.Collision.CanCollide = false
    end
end)
workspace.ChildAdded:Connect(function(c)
    if c.Name == "BackdoorRush" then
        DoEsp()
        local message = Instance.new("TextLabel")
        message.Size = UDim2.new(0.12, 0, 0.1, 0)
        message.Position = UDim2.new(0.44, 0, 0, 0)
        message.Text = "BackDoor rush is coming !!"
        message.TextColor3 = Color3.new(1, 1, 1)
        message.BackgroundColor3 = Color3.new(0.5, 0.1, 0.1)
        message.TextScaled = true
        message.Parent = SGui
        wait(5)
        message:Destroy()
    end
end)
LR.Changed:Connect(function()
     DoEsp()
end)
