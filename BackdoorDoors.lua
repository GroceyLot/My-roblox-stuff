local Config = {
    Speed = 20,
    FullBright = true,
    Esp = true,
    DoorCol = Color3.new(1,1,0),
    God = true
}

local CR = workspace.CurrentRooms
local LR = game:GetService("ReplicatedStorage").GameData.LatestRoom
local SGui = Instance.new("ScreenGui")
SGui.Parent = game.CoreGui

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

local RSC = game.RunService.RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Config.Speed
    if Config.FullBright then
        game.Lighting.Brightness = 1
        game.Lighting.FogEnd = 78654
        game.Lighting.ClockTime = 12
    end
    if Config.God then
        game.Players.LocalPlayer.Collision.Position = game.Players.LocalPlayer.HumanoidRootPart.Position - Vector3.new(0,10,0)
        game.Players.LocalPlayer.Collision.CanCollide = false
    end
end)

LR

workspace.ChildAdded:Connect(function(c)
    if c.Name == "BackdoorRush" then
        DoEsp()
      -- Create a new TextLabel for the GUI message
    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(0.12, 0, 0.1, 0)
    message.Position = UDim2.new(0.44, 0, 0, 0) -- Top left corner
    message.Text = "BackDoor rush is coming !!"
    message.TextColor3 = Color3.new(1, 1, 1) -- White text
    message.BackgroundColor3 = Color3.new(0.5, 0.1, 0.1) -- Slightly dark background for visibility
    message.TextScaled = true -- Ensures text fits within the label
    message.Parent = SGui -- Assuming this script is within a ScreenGui

    -- Remove the message after 5 seconds
    wait(5)
    message:Destroy()
    end
end)

LR.Changed:Connect(function()
     DoEsp()
end)
