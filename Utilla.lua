local Utils = {}

function Utils:Kick(player, reason)
    if not player:IsA("Player") then
        error("The argument 'player' must be a Player instance.")
    end

    player:Kick(reason)
end

function Utils:Wait(duration)
    wait(duration)
end

function Utils:FindPlayerByName(playerName)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name == playerName then
            return player
        end
    end
    return nil -- If no player with the specified name is found
end

function Utils:FindCharacterByName(charName)
    for _, player in ipairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character and character:IsA("Model") and character.Name == charName then
            return character
        end
    end
    return nil -- If no character with the specified name is found
end

function Utils:PlaySound(soundId, parent)
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Parent = parent
    sound:Play()
    return sound
end

function Utils:CreateTextLabel(text, parent, font, fontSize)
    local textLabel = Instance.new("TextLabel")
    textLabel.Text = text
    textLabel.Parent = parent
    textLabel.Font = font or Enum.Font.SourceSans
    textLabel.FontSize = fontSize or Enum.FontSize.Size18
    return textLabel
end

function Utils:CreateImageButton(image, parent, size)
    local imageButton = Instance.new("ImageButton")
    imageButton.Image = image
    imageButton.Parent = parent
    imageButton.Size = size or UDim2.new(0, 100, 0, 100)
    return imageButton
end

function Utils:CreatePart(partType, parent, size, position, color)
    local part = Instance.new("Part")
    part.Anchored = true
    part.CanCollide = true  -- Set CanCollide to true
    part.Size = size or Vector3.new(1, 1, 1)
    part.Position = position or Vector3.new(0, 0, 0)
    part.BrickColor = BrickColor.new(color or "Bright red")
    part.Parent = parent
    part.Shape = partType
    return part
end

function Utils:CreateSurfaceGui(parent, size, position, zIndexBehavior)
    local surfaceGui = Instance.new("SurfaceGui")
    surfaceGui.Adornee = parent
    surfaceGui.Face = Enum.NormalId.Front
    surfaceGui.Size = size or UDim2.new(1, 0, 1, 0)
    surfaceGui.Position = position or UDim2.new(0, 0, 0, 0)
    surfaceGui.ZIndexBehavior = zIndexBehavior or Enum.ZIndexBehavior.Global
    surfaceGui.Parent = parent
    return surfaceGui
end

function Utils:CreateImageLabel(image, parent, size, position)
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Image = image
    imageLabel.Parent = parent
    imageLabel.Size = size or UDim2.new(1, 0, 1, 0)
    imageLabel.Position = position or UDim2.new(0, 0, 0, 0)
    return imageLabel
end

function Utils:CreateFrame(parent, size, position, backgroundColor)
    local frame = Instance.new("Frame")
    frame.BackgroundTransparency = 0
    frame.BackgroundColor3 = backgroundColor or Color3.new(1, 1, 1)
    frame.Parent = parent
    frame.Size = size or UDim2.new(1, 0, 1, 0)
    frame.Position = position or UDim2.new(0, 0, 0, 0)
    return frame
end

function Utils:CreateClickDetector(parent, size, clickCallback)
    local clickDetector = Instance.new("ClickDetector")
    clickDetector.Parent = parent
    clickDetector.MaxActivationDistance = size or 10

    if type(clickCallback) == "function" then
        clickDetector.MouseClick:Connect(clickCallback)
    end

    return clickDetector
end

function Utils:CreateWeldConstraint(part0, part1, c0, c1)
    local weldConstraint = Instance.new("WeldConstraint")
    weldConstraint.Part0 = part0
    weldConstraint.Part1 = part1
    weldConstraint.C0 = c0 or CFrame.new()
    weldConstraint.C1 = c1 or CFrame.new()
    weldConstraint.Parent = part0
    return weldConstraint
end

function Utils:CreateBodyVelocity(parent, force)
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = force or Vector3.new()
    bodyVelocity.P = 2000 -- Adjust the P value as needed
    bodyVelocity.Parent = parent
    return bodyVelocity
end

function Utils:CreateMeshPart(parent, size, shape, color)
    local meshPart = Instance.new("MeshPart")
    meshPart.Anchored = true
    meshPart.CanCollide = false
    meshPart.Size = size or Vector3.new(1, 1, 1)
    meshPart.BrickColor = BrickColor.new(color or "Bright blue")
    meshPart.Parent = parent
    meshPart.Shape = shape or Enum.PartType.Block
    return meshPart
end

local function TweenObject(object, tweenInfo, endValues)
    local tweenService = game:GetService("TweenService")
    local tween = tweenService:Create(object, tweenInfo, endValues)
    tween:Play()
    return tween
end
function Utils:TweenObject(object, tweenInfo, endValues)
    local tweenService = game:GetService("TweenService")
    local tween = tweenService:Create(object, tweenInfo, endValues)
    tween:Play()
    return tween
end


function Utils:TweenPos(object, tweenInfo, startPos, endPos)
    if not object:IsA("GuiObject") and not object:IsA("BasePart") then
        error("Object must be a UI or Part instance")
    end

    object.Position = startPos
    return TweenObject(object, tweenInfo, {Position = endPos})
end

function Utils:TweenSize(object, tweenInfo, startSize, endSize)
    if not object:IsA("GuiObject") and not object:IsA("BasePart") then
        error("Object must be a UI or Part instance")
    end

    object.Size = startSize
    return TweenObject(object, tweenInfo, {Size = endSize})
end

function Utils:TweenRotation(object, tweenInfo, startRot, endRot)
    if not object:IsA("GuiObject") and not object:IsA("BasePart") then
        error("Object must be a UI or Part instance")
    end

    object.Rotation = startRot
    return TweenObject(object, tweenInfo, {Rotation = endRot})
end

return Utils
