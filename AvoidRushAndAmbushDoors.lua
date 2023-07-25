local teleportEnabled = false -- Set this value to true to enable teleportation
local isBelowMap = false -- Keep track of the player's teleportation state
local scr = Instance.new("ScreenGui")
local frame = Instance.new("TextLabel")
scr.Parent = game.CoreGui
frame.Parent = scr
frame.Name = "Blackout"
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(13, 12, 20)
frame.BorderColor3 = Color3.fromRGB(13, 12, 20)
frame.Text = "Avoiding Rush / Ambush"
frame.TextScaled = true
frame.TextColor3 = Color3.new(1,1,1)
scr.Enabled = false
print("Loaded v1.0")
local function teleportPlayer(player, isBelow, originalPosition)
    local character = player.Character
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    if rootPart then
        if isBelow then
            -- Teleport the player 30 studs below their original position
            character:SetPrimaryPartCFrame(CFrame.new(originalPosition + Vector3.new(0, 0, 100000)))
            isBelowMap = true
        else
            -- Restore the player to their original position
            character:SetPrimaryPartCFrame(CFrame.new(originalPosition))
            isBelowMap = false
        end
    end
end

-- Function to define the original position when RushMoving spawns
local function onRushMovingAdded(child)
    if child.Name == "RushMoving" or child.Name == "AmbushMoving" then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local originalPosition = rootPart.Position
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = true
                end
            end
            scr.Enabled = true
            while child.Parent == game.Workspace and character.Humanoid.Health ~= 0 do
                wait(0.05)
                teleportPlayer(player, true, originalPosition)
            end
            teleportPlayer(player, false, originalPosition)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = false
                end
            end
            scr.Enabled = false
        end
    end
end

-- Connect the function to be called whenever a new child is added to workspace
game:GetService("Workspace").ChildAdded:Connect(onRushMovingAdded)

-- Set the teleportEnabled value to false to enable restoring the player's position
-- You can change this value based on game events or player input as needed.
teleportEnabled = true
