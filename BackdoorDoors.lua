local Config = {Speed = 20,FullBright = true,Esp = true,DoorCol = Color3.new(1,1,0),LevCol = Color3.new(0,1,1),God = true}
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
        EspLib:AddHighlight(CR[tostring(LR.Value)].Door.Door, Config.DoorCol)
        EspLib:AddText(CR[tostring(LR.Value)].Door.Door.TimerPlate, Config.DoorCol, "Door: "..tostring(LR.Value-50))
        for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "TimerLever" then
                EspLib:AddHighlight(v.Main, Config.LevCol)
            end
        end
    end
end
workspace.ChildAdded:Connect(function(c)
    if c.Name == "BackdoorRush" then
        local message = Instance.new("TextLabel")
        message.Size = UDim2.new(0.12, 0, 0.1, 0)
        message.Position = UDim2.new(0.44, 0, 0, 0)
        message.Text = "BackDoor rush is coming !!"
        message.TextColor3 = Color3.new(1, 1, 1)
        message.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
        message.TextScaled = true
        message.Parent = SGui
        local Uic = Instance.new("UICorner")
        Uic.Parent = message
        wait(5)
        message:Destroy()
    end
end)
LR.Changed:Connect(function()
     DoEsp()
end)
while wait() do
    Char.Humanoid.WalkSpeed = Config.Speed
    if Config.FullBright then
        game.Lighting.Brightness = 1
        game.Lighting.FogEnd = 78654
        game.Lighting.ClockTime = 12
    end
    if Config.God then
        Char.Collision.Position = Char.HumanoidRootPart.Position - Vector3.new(0,11,0)
        Char.Collision.CanCollide = false
    end
end
