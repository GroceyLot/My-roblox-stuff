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
local player = game.Players.LocalPlayer
local char = player.Character
function findclosets()
	local roms = game.Workspace.CurrentRooms:GetChildren()
	local closets = {}
	for i=1,#roms do
		if roms[i]:FindFirstChild("Assets") then
			print("Assets found in room " .. roms[i].Name)
			local astets = roms[i]:FindFirstChild("Assets")
			local added = 0
			for j=1, #astets:GetChildren() do
				if astets:GetChildren()[j].Name == "Wardrobe" then
					table.insert(closets, astets:FindFirstChild("Wardrobe"))
					added = added + 1
				end
			end
			if added == 0 then
				print("No closets found in room " .. roms[i].Name)
			else
				print("Closets found in room " .. roms[i].Name)
			end
		else
			print("No assets found in room " .. roms[i].Name)
		end
	end
	return closets
end
function findnearestcloset()
	local closets = findclosets()
	local distances = {}
	for i=1, #closets do
		local mainpos = closets[i].Main.Position
		table.insert(distances, (mainpos - char.HumanoidRootPart.Position).magnitude)
	end
	local lowest = 1000000000000000
	local lowestindex = 0
	for i=1, #distances do
		if distances[i] < lowest then
			lowest = distances[i]
			lowestindex = i
		end
	end
	print("Closest closet found was " .. lowest .. " studs away from the player and in room " .. closets[lowestindex].Parent.Parent.Name)
	return closets[lowestindex]
end
print("Loaded v1.0")

local function teleportPlayer(player, isBelow, closet)
    local character = player.Character
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    if rootPart then
        if isBelow then
            -- Teleport the player 30 studs below their original position
            fireproximityprompt(closet.HidePrompt)
        else
        end
    end
end

-- Function to define the original position when RushMoving spawns
local function onRushMovingAdded(child)
    if child.Name == "RushMoving" then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local closet = findnearestcloset()
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local originalPosition = rootPart.Position
            while child:IsDescendantOf(game:GetService("Workspace")) do
                character:SetPrimaryPartCFrame(closet.Main.CFrame)
                local rushMoving = workspace:FindFirstChild("RushMoving")
                if rushMoving:FindFirstChild("RushNew") and (rushMoving:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude < 50 then
                    teleportPlayer(player, true, closet)
                else
                    teleportPlayer(player, false, closet)
                end
                wait() -- Adjust the delay to avoid excessive checks (optional)
            end
        end
    end
end

-- Connect the function to be called whenever a new child is added to workspace
game:GetService("Workspace").ChildAdded:Connect(onRushMovingAdded)

-- Set the teleportEnabled value to false to enable restoring the player's position
-- You can change this value based on game events or player input as needed.
teleportEnabled = true
