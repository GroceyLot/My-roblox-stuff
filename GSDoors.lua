local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local esp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua"))()
local vs = {ws = 0,
    des = false,
    kes = false,
    ies = false,
    ees = false,
    st = false,
    nso = false,
    it = false,
    ne = false,
    af = false,
    pa = false,
    la = false,
    no = false,
    hbw = false,
    set = false,
    nl = false,
    gmn = false,
    de = false,
    asn = false,
    wi = false,
    ad = false,
    dr = false,
    arc = false}
local fbd = {}
local topick = {}


local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if vs["it"] then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(self) == 'Screech' and method == "FireServer" and vs["st"] then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and vs["hbw"] then
        args[2] = true
        return old(self,unpack(args))
    end

    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and vs["st"] then
        child:Destroy()
    end

end)
local screechremote = game.ReplicatedStorage.EntityInfo:FindFirstChild("Screech")

function updateesp()
    esp:Clear()
    local curval = LatestRoom.Value
    local newroom = game.Workspace.CurrentRooms[tostring(LatestRoom.Value)]
    local door = newroom.Door
    local con
    if vs["des"] then
        esp:AddHighlight(door.Door, Color3.new(1,1,0))
        if curval ~= 50 and curval ~= 49 then
            esp:AddText(door.Door.Sign, Color3.new(1,1,0), "Door " .. tostring(LatestRoom.Value + 1))
        end
    end
    if vs["kes"] then
        local desc = newroom:GetDescendants()
        for i=1, #desc do
            local n = desc[i]
            if n.Name == "KeyObtain" then
                esp:AddHighlight(n, Color3.new(0,1,1))
                esp:AddText(n, Color3.new(0,1,1), "Key")
            end
            if n.Name == "LeverForGate" then
                esp:AddHighlight(n, Color3.new(0,1,1))
                esp:AddText(n, Color3.new(0,1,1), "Gate switch")
            end
            if n.Name == "LiveHintBook" then
                esp:AddHighlight(n, Color3.new(0,1,1))
                esp:AddText(n, Color3.new(0,1,1), "Book")
            end
            if n.Name == "LiveBreakerPolePickup" then
                esp:AddHighlight(n, Color3.new(0,1,1))
                esp:AddText(n, Color3.new(0,1,1), "Breaker")
            end
            if n.Name == "PickupItem" then
                esp:AddHighlight(n, Color3.new(0,1,1))
                esp:AddText(n, Color3.new(0,1,1), "Library paper")
            end
        end
    end
    if vs["ies"] then
        if newroom:FindFirstChild("Assets") then
            local desc = newroom.Assets:GetDescendants()
            for i=1, #desc do
                local v = desc[i]
                if v:IsA("Model") then
                    local goldvalue = v:GetAttribute("GoldValue")

                    if goldvalue then
                        esp:AddHighlight(v, Color3.new(1,0,1))
                        esp:AddText(v, Color3.new(1,0,1), tostring(goldvalue) .. " Gold")
                    end
                    if (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
                        local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
                        esp:AddHighlight(part, Color3.new(1,0,1))
                        esp:AddText(part, Color3.new(1,0,1), v.Name)
                    end
                end
            end
            con = newroom.Assets.DescendantAdded:Connect(function(v)
                if v:IsA("Model") then
                    local goldvalue = v:GetAttribute("GoldValue")

                    if goldvalue then
                        esp:AddHighlight(v, Color3.new(1,0,1))
                        esp:AddText(v, Color3.new(1,0,1), tostring(goldvalue) .. " Gold")
                    end
                    if (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
                        local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
                        esp:AddHighlight(part, Color3.new(1,0,1))
                        esp:AddText(part, Color3.new(1,0,1), v.Name)
                    end
                end
            end)
        end
    end
    if vs["ees"] then
        if curval == 50 or curval == 100 then
            esp:AddHighlight(newroom.FigureSetup.FigureRagdoll, Color3.new(1,0,0))
            esp:AddText(newroom.FigureSetup.FigureRagdoll, Color3.new(1,0,0), "Figure")
        end
        if newroom:FindFirstChild("Assets") then
            local ad = newroom.Assets:GetDescendants()
            for i=1, #ad do
                if ad[i].Name == "Snare" then
                    esp:AddHighlight(ad[i], Color3.new(1,0,0))
                    esp:AddText(ad[i], Color3.new(1,0,0), "Snare")
                end
            end
        end
	if workspace:FindFirstChild("RushMoving") then
	    pcall(function()
	    repeat wait(0.01) until workspace.RushMoving:FindFirstChild("RushNew")
	    esp:AddText(ad[i], Color3.new(1,0,0), "Rush")
	    end)
	end
	if workspace:FindFirstChild("AmbushMoving") then
	    pcall(function()
	    repeat wait(0.01) until workspace.AmbushMoving:FindFirstChild("RushNew")
	    esp:AddText(ad[i], Color3.new(1,0,0), "Ambush")
	    end)
	end
    end
    return con
end
local player = game.Players.LocalPlayer
local char = player.Character
function findclosets()
    local roms = game.Workspace.CurrentRooms:GetChildren()
    local closets = {}
    for i=1,#roms do
        if roms[i]:FindFirstChild("Assets") then
            local astets = roms[i]:FindFirstChild("Assets")
            local added = 0
            for j=1, #astets:GetChildren() do
                if astets:GetChildren()[j].Name == "Wardrobe" or astets:GetChildren()[j].Name == "Toolshed" then
                    table.insert(closets, astets:GetChildren()[j])
                    added = added + 1
                end
            end
            if added == 0 then
            else
            end
        else
        end
    end
    return closets
end
function findnearestcloset()
    local closets = findclosets()
    local rootPart = char and char:FindFirstChild("HumanoidRootPart")
    local distances = {}
    for i=1, #closets do

        local mainpos = closets[i].Main.Position
        table.insert(distances, (mainpos - rootPart.Position).magnitude)
    end
    local lowest = 1000000000000000
    local lowestindex = 0
    for i=1, #distances do
        if distances[i] < lowest then
            lowest = distances[i]
            lowestindex = i
        end
    end
    return closets[lowestindex]
end
print("Loaded v1.0")

-- Function to define the original position when RushMoving spawns
local function onRushMovingAdded(child)
    if child.Name == "RushMoving" then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local closet = findnearestcloset()
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        while not child:FindFirstChild("RushNew") do
            wait()
        end
        if vs["ne"] and vs["de"] then
            local h = "Prepare to hide"
            if vs["arc"] then
                h = "If it is real we will prepare to hide."
            end
            if vs["gmn"] then
                h = "You have godmode so it doesn't matter"
            end
            Achievements.Get({
                Title = "I think rush is coming",
                Desc = h,
                Reason = "RushMoving found in Workspace, may be fake",
                Image = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/download.png",
            })
        end
        if (child:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude > 9999 then
            return
        end
        if vs["ees"] then
            esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Rush")
        end
        if vs["ne"] then
            local h = "Quick hide!"
            if vs["arc"] then
                h = "Don't worry, we will enter the closet when it is close enough."
            end
            if vs["gmn"] then
                h = "Don't worry, you've got godmode"
            end
            Achievements.Get({
                Title = "Rush is coming",
                Desc = h,
                Reason = "RushMoving found in Workspace and verified",
                Image = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/download.png",
            })
        end
        if rootPart and vs["arc"] then
            while child.Parent == game.Workspace do
                local rushMoving = workspace:FindFirstChild("RushMoving")
                wait(0.1)
                character:MoveTo(closet.Door1.Position)
                if rushMoving:FindFirstChild("RushNew") and (rushMoving:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude < 200 and closet.HiddenPlayer.Value == nil then
                    fireproximityprompt(closet.HidePrompt)
                    wait(0.1)
                end
            end
        end
    end
    if child.Name == "AmbushMoving"  then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local closet = findnearestcloset()
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        while not child:FindFirstChild("RushNew") do
            wait()
        end
        if vs["ne"] then
            local h = "Quick hide! Make sure to get in and out."
            if vs["gmn"] then
                h = "It doesn't matter with godmode but maybe don't move."
            end
            if vs["de"] then
                Achievements.Get({
                    Title = "I think ambush is coming",
                    Desc = h,
                    Reason = "AmbushMoving found in Workspace, may be fake",
                    Image = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/download.png",
                })
            end
            local vf = false
            for i=1,200 do
                wait(0.01)
                if game:GetService("Workspace")["Ambience_Ambush"].IsPlaying then
                    vf = true
                    break
                end
            end
            if vf then
                Achievements.Get({
                    Title = "Ambush is coming",
                    Desc = h,
                    Reason = "AmbushMoving found in Workspace and verified",
                    Image = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/download.png",
                })
            end
        end
        if vs["ees"] then
            esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Ambush")
        end
    end
end


-- Connect the function to be called whenever a new child is added to workspace
game:GetService("Workspace").ChildAdded:Connect(onRushMovingAdded)
Achievements.Get({
    Title = "Locked and Loaded",
    Desc = "Cheating time!",
    Reason = "You executed GSDoors.",
    Image = "https://images.emojiterra.com/twitter/v13.1/512px/1f913.png",
})

function handleautoprompts()
    local rootPart = char and char:FindFirstChild("Collision")
    for i=1, #topick do
        if topick[i] and topick[i].Parent then
            local pos = topick[i].Parent
            if topick[i].Parent:IsA("Model") then
                if topick[i].Parent.Name == "RolltopContainer" then
                    pos = topick[i].Parent.Main
                else
                    if topick[i].Parent:FindFirstChild("Hitbox") then
                        pos = topick[i].Parent.Hitbox
                    else
                        if topick[i].Parent:FindFirstChild("Base") then
                            pos = topick[i].Parent.Base
                        else
                            if topick[i].Parent:FindFirstChild("Handle") then
                                pos = topick[i].Parent.Handle
                            else
                                pos = topick[i].Parent.Main
                            end
                        end
                    end
                end
            end
            if (rootPart.Position - pos.Position).Magnitude <= 10 then
                fireproximityprompt(topick[i])
                if topick[i].Name ~= "UnlockPrompt" then
                    pcall(function()
                        table.remove(topick, i)
                    end)
                end
            end
        end
    end
    wait()
    game.RunService.Heartbeat:Once(handleautoprompts)
end

game.RunService.Heartbeat:Once(handleautoprompts)

function waste()
    if not vs["wi"] then
	return
    end
    for _,Player in pairs(Game.Players:GetPlayers()) do
        local function WasteItem(Item)
            if Item.Parent.Parent ~= game.Players.LocalPlayer then
                if ((Item.Name == "Lighter" or Item.Name == "Flashlight") and Item:GetAttribute("Enabled") == false) or Item.Name == "Vitamins" then
                    Item.Remote:FireServer()
                end
            end
        end
        for _,Item in pairs(Player.Backpack:GetChildren()) do
            WasteItem(Item)
        end
        for _,Item in pairs(Player.Character:GetChildren()) do
            WasteItem(Item)
        end
    end
    wait(0.1)
    game.RunService.Heartbeat:Once(waste)
end
game.RunService.Heartbeat:Once(waste)

-- Creates and displays your custom achievement

--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances
local Lib = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/DoorsLib.lua"))()

-- Create a new window
local window = Lib:Window("Window", "GSDoors")

-- Create a section in the window
local section1 = window:Section("Player", "section1")

-- Add a number input to the section
section1:Number("Speed Boost", "WalkSpeed", 0, 6, 0, function(value)
    vs["ws"] = value
end)
local flying = false
local fspeed = 5

local uis = game:GetService("UserInputService")
local lastpos
function update()
    local movement = Vector3.new()
    local cam = game.Workspace.CurrentCamera
    if flying then
        if uis:IsKeyDown(Enum.KeyCode.W) then
            movement = movement + cam.CFrame.lookVector
        end
        if uis:IsKeyDown(Enum.KeyCode.S) then
            movement = movement - cam.CFrame.lookVector
        end
        if uis:IsKeyDown(Enum.KeyCode.D) then
            movement = movement + cam.CFrame.rightVector
        end
        if uis:IsKeyDown(Enum.KeyCode.A) then
            movement = movement - cam.CFrame.rightVector
        end
        if uis:IsKeyDown(Enum.KeyCode.LeftControl) then
            movement = movement - cam.CFrame.upVector
        end
        if uis:IsKeyDown(Enum.KeyCode.Space) then
            movement = movement + cam.CFrame.upVector
        end
        local speed = fspeed / 25
	if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - lastpos).Magnitude >= 10 then
	    lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	    return
	end
        pcall(function()
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(lastpos))
        end)
        game.Players.LocalPlayer.Character:TranslateBy(movement * Vector3.new(speed, speed, speed))
        lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
end


game.RunService.Heartbeat:Connect(update)

local tog = section1:Toggle("Fly (F)", "fly", false, function(state)
    flying = state
    lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
uis.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.F then
            flying = not flying
            tog:Toggle(flying)
        end
    end
end)
section1:Number("Fly speed", "fs", 0, 15, 5, function(value)
    fspeed = value
end)
-- Add a toggle switch to the section
section1:Toggle("Instant prompts", "it", false, function(state)
    vs["it"] = state
end)
section1:Toggle("Waste others tools", "wi", false, function(state)
    vs["wi"] = state
end)
-- Add a button to the section
section1:Button("Kill", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
section1:FinishSize()
-- Create another section in the window
local section2 = window:Section("Entities", "section2")



section2:Toggle("Auto Heartbeat", "hbw", false, function(state)
    vs["hbw"] = state
end)
local Noclip = nil
local Clip = nil

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		v:SetAttribute("ShouldCollide", v.CanCollide)
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
    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA('BasePart') and v:GetAttribute("ShouldCollide") and v.Name ~= floatName then
            v.CanCollide = true
	end
    end
    Clip = true
end

local gmnb = section2:Toggle("Godmode/Noclip", "gmn", false, function(state)
    vs["gmn"] = state
    if state then
        game.Players.LocalPlayer.Character:SetAttribute("GM", true)
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position - Vector3.new(0,10,0)
        noclip()
    else
        game.Players.LocalPlayer.Character:SetAttribute("GM", false)
        local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
        Col.Position = Col.Position + Vector3.new(0,10,0)
        clip()
    end
end)
section2:Toggle("Anti-Screech", "st", false, function(state)
    vs["st"] = state
end)
section2:Toggle("Anti-Seek", "set", false, function(state)
    vs["set"] = state
end)
section2:Toggle("Anti-Snare", "asn", false, function(state)
    vs["asn"] = state
end)
section2:Toggle("Anti-Dupe", "ad", false, function(state)
    vs["ad"] = state
end)
section2:FinishSize()



local section3 = window:Section("Visuals", "section3")
section3:Toggle("Notify-Entity", "ne", false, function(state)
    vs["ne"] = state
end)
section3:Toggle("Notify-Entity debug", "de", false, function(state)
    vs["de"] = state
end)
section3:Toggle("Fullbright", "fb", false, function(state)
    if state then
        fb()
    else
        unfb()
    end
end)
section3:Toggle("Anti-Timothy", "tt", false, function(state)
    if state then
        local ting = game.ReplicatedStorage.Entities.Spider
        local tings = ting:GetChildren()
        for i=1,#tings do
            if tings[i]:IsA("MeshPart") then
                tings[i].Transparency = 1
            end
        end
        ting.ActualRoot.Sound.Parent = game.Lighting
    else
        local ting = game.ReplicatedStorage.Entities.Spider
        local tings = ting:GetChildren()
        for i=1,#tings do
            if tings[i]:IsA("MeshPart") then
                tings[i].Transparency = 0
            end
        end
        game.Lighting.Sound.Parent = game.ReplicatedStorage.Entities.Spider.ActualRoot
    end
end)

local section4 = window:Section("ESP", "section4")
section4:Toggle("Door", "des", false, function(state)
    vs["des"] = state
end)
section4:Toggle("Key, book etc", "kes", false, function(state)
    vs["kes"] = state
end)
section4:Toggle("Gold, item etc", "ies", false, function(state)
    vs["ies"] = state
end)
section4:Toggle("Entities", "ees", false, function(state)
    vs["ees"] = state
end)
-- Add a button to the section
section4:Button("Refresh", function()
    local ds = updateesp()
    LatestRoom:GetPropertyChangedSignal("Value"):Once(function()
	pcall(function() ds:Disconnect() end)
    end)
end)
section4:FinishSize()
section3:FinishSize()
local section6 = window:Section("World", "section6")
section6:Toggle("No gate etc", "no", false, function(state)
    vs["no"] = state
end)
section6:Toggle("No seek arms etc", "nso", false, function(state)
    vs["nso"] = state
end)
section6:Toggle("Pickup aura", "pa", false, function(state)
    vs["pa"] = state
end)
section6:Toggle("Auto unlock", "la", false, function(state)
    vs["la"] = state
end)
section6:Toggle("No rooms lock", "nl", false, function(state)
    vs["nl"] = state
end)
section6:Toggle("Door reach", "dr", false, function(state)
    vs["dr"] = state
end)
section6:FinishSize()
-- Add a label to the window
window:Label("Shift to close the ui")
-- Add a label to the window
window:Label("Thank you for using GSDoors")

function fb()
    local lighting = game:GetService("Lighting");
    fbd = {}
    fbd[1] = lighting.Ambient
    fbd[2] = lighting.Brightness
    fbd[3] = lighting.FogEnd
    lighting.Ambient = Color3.fromRGB(255, 255, 255);
    lighting.Brightness = 1;
    lighting.FogEnd = 1e10;
    for i, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v:SetAttribute("e", v.Enabled)
            v.Enabled = false;
        end;
    end;
    fbd[4] = lighting.Changed:Connect(function()
	fbd[1] = lighting.Ambient
   	fbd[2] = lighting.Brightness
   	fbd[3] = lighting.FogEnd
        lighting.Ambient = Color3.fromRGB(255, 255, 255);
        lighting.Brightness = 1;
        lighting.FogEnd = 1e10;
    end);
end
function unfb()
    local lighting = game:GetService("Lighting");
    lighting.Ambient = fbd[1];
    lighting.Brightness = fbd[2];
    lighting.FogEnd = fbd[3];
    for i, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = v:GetAttribute("e") or v.Enabled;
        end;
    end;
    fbd[4]:Disconnect()
end
--// ok actual code starts here

function newroom()
    local curval = LatestRoom.Value
    repeat wait() until game.Workspace.CurrentRooms:FindFirstChild(tostring(curval))
    local newroom = game.Workspace.CurrentRooms[tostring(curval)]
    if vs["nso"] then
        if newroom:FindFirstChild("Assets") then
            local desc = newroom.Assets:GetDescendants()
            for i=1, #desc do
                local n = desc[i]
                if n.Name == "Seek_Arm" then
                    task.spawn(function()
                        wait()
                        n:Destroy()
                    end)
                end
                if n.Name == "ChandelierObstruction" then
                    task.spawn(function()
                        wait()
                        n:Destroy()
                    end)
                end
            end
        end
    end
    if vs["set"] then
        local trigger = newroom:FindFirstChild("TriggerEventCollision")

        if trigger then
            trigger:Destroy()
        end
    end
    if vs["no"] then
        local gate = newroom:FindFirstChild("Gate")

        if gate then
            local door = gate:FindFirstChild("ThingToOpen")

            if door then
                door:Destroy()
            end
        end
        local assets = newroom:FindFirstChild("Assets")
        local paintings = assets:FindFirstChild("Paintings")

        if paintings then
            local door = paintings:FindFirstChild("MovingDoor")

            if door then
                door:Destroy()
            end
        end
        local door = newroom:FindFirstChild("Wax_Door")

        if door then
            door:Destroy()
        end
    end
    local ds = updateesp()
    for i,v in pairs(topick) do
	if v.Parent == nil then
            table.remove(topick, i)
	end
    end
    local rc = {}
    if vs["pa"] then
        if newroom:FindFirstChild("Assets") then
            local desc = newroom.Assets:GetDescendants()
            for i=1, #desc do
                if desc[i].Name == "ActivateEventPrompt" then
                    table.insert(topick, desc[i])
                end
                if desc[i].Name == "ModulePrompt" then
                    table.insert(topick, desc[i])
                end
                if desc[i].Name == "LootPrompt" then
                    table.insert(topick, desc[i])
                end
                if desc[i].Name == "Table" or desc[i].Name == "Dresser" or desc[i].Name == "Rolltop_Desk" then
                    table.insert(rc,
                        desc[i].DescendantAdded:Connect(function(d)
                            if d.Name == "ModulePrompt" then
                                table.insert(topick, d)
                            end
                            if d.Name == "LootPrompt" then
                                table.insert(topick, d)
                            end
                        end))
                end
            end
        end
        if curval == 50 then
            table.insert(topick, newroom.PickupItem.ModulePrompt)
        end
    end
    if curval == 50 or curval == 100 then
	repeat wait() until not workspace:FindFirstChild("RushMoving") and not workspace:FindFirstChild("AmbushMoving")
        gmnb:Toggle(false)
        Achievements.Get({
            Title = "Disabled godmode.",
            Desc = "Godmode disabled for figure, you can re-enable it after.",
            Reason = "Current room is 50 or 100.",
            Image = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/download.png",
        })
    end
    if vs["la"] then
        if newroom.Door:FindFirstChild("Lock") then
            table.insert(topick, newroom.Door.Lock.UnlockPrompt)
        end
    end
    if vs["nl"] then
        if newroom:FindFirstChild("RoomsDoor_Entrance") then
            newroom["RoomsDoor_Entrance"].Door.EnterPrompt.Enabled = true
        end
    end
    if vs["asn"] then
        if newroom:FindFirstChild("Assets") then
            local desc = newroom.Assets:GetDescendants()
            for i=1, #desc do
                if desc[i].Name == "Snare" then
                    desc[i].Hitbox:Destroy()
                end
            end
        end
    end
    if vs["ad"] then
        if newroom:FindFirstChild("Closet") then
            if newroom.Closet:FindFirstChild("DoorFake") then
            	newroom.Closet.DoorFake:Destroy()
            end
        end
    end
    local hasuyhdwq = nil
    if vs["dr"] then
	hasuyhdwq = game.RunService.Heartbeat:Connect(function()
	    newroom.Door.ClientOpen:FireServer()
	end)
    end
    LatestRoom:GetPropertyChangedSignal("Value"):Wait()
    pcall(function() ds:Disconnect(); end)
    pcall(function() hasuyhdwq:Disconnect(); end)
    for i=1,#rc do
        rc[i]:Disconnect()
    end
end
LatestRoom:GetPropertyChangedSignal("Value"):Connect(newroom)

while true do
    if vs["st"] then
        screechremote.Parent = nil
    else
        screechremote.Parent = game.ReplicatedStorage.EntityInfo
    end
    wait()
    if char.Humanoid.MoveDirection.Magnitude > 0 and vs["ws"] > 0 then
        char:TranslateBy(char.Humanoid.MoveDirection * Vector3.new(vs["ws"] / 24 , vs["ws"] / 24, vs["ws"] / 24))
    end
end

