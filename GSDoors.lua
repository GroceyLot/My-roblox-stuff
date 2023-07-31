local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local esp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/esp.lua"))()
local vs = {ws = 15,
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
	no = false,
	hbw = false,
	set = false,
	arc = false}
local fbd = {}


local Utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Utilla.lua"))()
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

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
section1:Number("Speed", "WalkSpeed", 0, 21, 15, function(value)
    vs["ws"] = value
end)

-- Add a toggle switch to the section
section1:Toggle("Instant prompts", "InstantPrompts", false, function(state)
    vs["it"] = state
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
section2:Toggle("Avoid Figure", "af", false, function(state)
    vs["af"] = state
end)
section2:Toggle("Auto Rush Closet", "arc", false, function(state)
    vs["arc"] = state
end)
section2:FinishSize()
local section5 = window:Section("Anti-Entities")
section5:Toggle("Anti-Screech", "st", false, function(state)
    vs["st"] = state
end)
section5:Toggle("Anti-Seek", "set", false, function(state)
    vs["set"] = state
end)


section5:FinishSize()

local section3 = window:Section("Visuals", "section3")
section3:Toggle("Notify-Entity", "ne", false, function(state)
    vs["ne"] = state
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
    	ting.ActualRoot.Sound.Volume = 0
    else
    	local ting = game.ReplicatedStorage.Entities.Spider
    	local tings = ting:GetChildren()
    	for i=1,#tings do
    		if tings[i]:IsA("MeshPart") then
    			tings[i].Transparency = 0
    		end
    	end
    	ting.ActualRoot.Sound.Volume = 2
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
	if vs["des"] then
		esp:AddHighlight(door.Door, Color3.new(1,1,0))
		if curval ~= 50 then
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
		end
	end
	if vs["ees"] then
		if curval == 50 then
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
	end
end
function newroom()
	local curval = LatestRoom.Value
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
	if vs["st"] then
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
	updateesp()
	
end
LatestRoom:GetPropertyChangedSignal("Value"):Connect(newroom)
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
				if astets:GetChildren()[j].Name == "Wardrobe" or astets:GetChildren()[j].Name == "Toolshed" then
					table.insert(closets, astets:GetChildren()[j])
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
	print("Closest closet found was " .. lowest .. " studs away from the player and in room " .. closets[lowestindex].Parent.Parent.Name)
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
		if (child:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude > 9999 then
			return
		end
		if vs["ees"] then
			esp:AddHighlight(child:FindFirstChild("RushNew"), Color3.new(1,0,0))
			esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Rush")
		end
		if vs["ne"] then
			local h = "Quick hide!"
			if vs["arc"] then
				h = "Don't worry, we will enter the closet when it is close enough."
			Achievements.Get({
    			Title = "Rush is coming",
    			Desc = h,
    			Reason = "RushMoving found in Workspace",
    			Image = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fwhite-exclamation-mark-symbol-red-circle-white-exclamation-mark-symbol-red-circle-caution-icon-isolated-white-background-image186316726&psig=AOvVaw3hyUWEHJB8UxBAvaUJmxmQ&ust=1690903763587000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLDl0r-huYADFQAAAAAdAAAAABAJ",
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
				else
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
		if (child:FindFirstChild("RushNew").Position - rootPart.Position).Magnitude > 9999 then
			return
		end
		if vs["ees"] then
			esp:AddHighlight(child:FindFirstChild("RushNew"), Color3.new(1,0,0))
			esp:AddText(child:FindFirstChild("RushNew"), Color3.new(1,0,0), "Ambush")
		end
		if vs["ne"] then
			local h = "Quick hide! Make sure to get in and out."
			Achievements.Get({
    			Title = "Ambush is coming",
    			Desc = h,
    			Reason = "AmbushMoving found in Workspace",
    			Image = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fwhite-exclamation-mark-symbol-red-circle-white-exclamation-mark-symbol-red-circle-caution-icon-isolated-white-background-image186316726&psig=AOvVaw3hyUWEHJB8UxBAvaUJmxmQ&ust=1690903763587000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLDl0r-huYADFQAAAAAdAAAAABAJ",
			})
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
while true do
	if vs["st"] then
		screechremote.Parent = nil
	else
		screechremote.Parent = game.ReplicatedStorage.EntityInfo
	end
	wait(0.1)
	char.Humanoid.WalkSpeed = vs["ws"]
end
