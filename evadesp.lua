-- Load the ESP library
local ESP = loadstring(game:HttpGet('https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua'))()

-- Function to add ESP highlights and text
local function addESP(character, color, label)
    local espHighlight = ESP:AddHighlight(character, color)
    local espText = ESP:AddText(character, color, label)
    
    character.AncestryChanged:Connect(function(_, parent)
        if parent == nil then
            espHighlight:Destroy()
            espText:Destroy()
        end
    end)
end

-- Function to handle player joining
local function playerJoined(player)
    if player.Character then
        local character = player.Character
        local highlightColor = Color3.new(1, 1, 1) -- Set your desired color
        addESP(character, highlightColor, player.Name)
    end
    
    player.CharacterAdded:Connect(function(character)
        local highlightColor = Color3.new(1, 1, 1) -- Set your desired color
        addESP(character, highlightColor, player.Name)
    end)
end

-- Function to handle player leaving
local function playerLeft(player)
    local character = player.Character
    if character then
        for _, child in ipairs(ESP.Folder:GetChildren()) do
            if child.Name == player.Name then
                child:Destroy()
            end
        end
    end
end

-- Function to handle bot added
local function botAdded(bot)
    if bot:WaitForChild('HRP') then
        local highlightColor = Color3.new(1, 0, 0) -- Set your desired color
        addESP(bot.HRP, highlightColor, bot.Name)
    end
end

-- Connect functions to events
game.Players.PlayerAdded:Connect(playerJoined)
game.Players.PlayerRemoving:Connect(playerLeft)
game.Workspace.Game.Players.ChildAdded:Connect(botAdded)

-- Apply ESP to existing players and bots
for _, player in ipairs(game.Players:GetPlayers()) do
    playerJoined(player)
end

for _, bot in ipairs(game.Workspace.Game.Players:GetChildren()) do
    botAdded(bot)
end
