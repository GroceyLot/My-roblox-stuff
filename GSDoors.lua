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
	arc = false}
local fbd = {}
local topick = {}


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

local gmnb = section2:Toggle("Godmode/Noclip", "gmn", false, function(state)
	vs["gmn"] = state
	if state then
		local Col = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
		Col.Position = Col.Position - Vector3.new(0,10,0)
		noclip()
	else
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
section6:FinishSize()
local section7 = window:Section("Server-side hardcore mode", "section7")
section7:Button("Connect as Client", function()
    local ldr
local d
local done = false

game.TextChatService.TextChannels.RBXGeneral:SendAsync("Waiting for connection")



-- by sponguss, i just fixed some stuff
function ambush(_, CanEntityKill)
	local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/Codes/Entities/Doors_Entity_Spawner.lua"--[["https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"--]]))()
	local L_2_ = L_1_.createEntity({
		CustomName = "Ambush", -- Custom name of your entity
		Model = "rbxassetid://11327312794", -- Can be GitHub file or rbxassetid
		Speed = 400, -- Percentage, 100 = default Rush speed
		DelayTime = 5, -- Time before starting cycles (seconds)
		HeightOffset = 0,
		CanKill = CanEntityKill or false,
		KillRange = 100,
		BreakLights = true,
		BackwardsMovement = false,
		FlickerLights = {
			true, -- Enabled/Disabled
			1, -- Time (seconds)
		},
		Cycles = {
			Min = 1,
			Max = 6,
			WaitTime = 5,
		},
		CamShake = {
			true, -- Enabled/Disabled
			{
				3.5,
				20,
				0.1,
				1
			}, -- Shake values (don't change if you don't know)
			100, -- Shake start distance (from Entity to you)
		},
		Jumpscare = {
			true, -- Enabled/Disabled
			{
				Image1 = "rbxassetid://10483855823", -- Image1 url
				Image2 = "rbxassetid://10483999903", -- Image2 url
				Shake = false,
				Sound1 = {
					10483790459, -- SoundId
					{
						Volume = 0.5
					}, -- Sound properties
				},
				Sound2 = {
					10483837590, -- SoundId
					{
						Volume = 0.5
					}, -- Sound properties
				},
				Flashing = {
					false, -- Enabled/Disabled
					Color3.fromRGB(255, 255, 255), -- Color
				},
				Tease = {
					false, -- Enabled/Disabled
					Min = 1,
					Max = 3,
				},
			},
		},
		CustomDialog = {
			"You died to Ambush.",
			"You might need to hop in and out of your hiding spot a couple of times."
		}, -- Custom death message
	})
	local L_3_arg0=L_2_

	L_2_.Debug.OnEntityFinishedRebound = function()
		L_3_arg0.Config.Speed += 45
		L_3_arg0.Config.Cycles.WaitTime += 0.5
	end

	L_2_.Debug.OnEntitySpawned = function(L_4_arg0)
		workspace.Ambience_Ambush:Play()
		L_3_arg0.Model.RushNew.PlaySound.Volume = 0
		L_3_arg0.Model.RushNew.Footsteps.Volume = 0
		L_3_arg0.Model.RushNew.PlaySound.Playing = true
		game.TweenService:Create(L_3_arg0.Model.RushNew.PlaySound, TweenInfo.new(8), {
			Volume = 0.8
		}):Play()
		game.TweenService:Create(L_3_arg0.Model.RushNew.Footsteps, TweenInfo.new(8), {
			Volume = 0.8
		}):Play()
		wait(2)
	end

	L_1_.runJumpscare = function(L_5_arg0)
		game.SoundService.Main.Volume = 0
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush:Play()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.Visible = true
		local L_6_ = tick()
		local L_7_ = math.random(5, 30) / 100
		local L_8_ = L_7_ + math.random(10, 60) / 100
		local L_9_ = 0.2
		for L_11_forvar0 = 1, 100000 do
			task.wait(0.016666666666666666)
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Position = UDim2.new(0.5, math.random(-15, 15), 0.5, math.random(-15, 15))
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, math.random(4, 10) / 255, math.random(0, 3) / 255)
			if L_6_ + L_7_ <= tick() then
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = true
				L_7_ = L_7_ + math.random(7, 44) / 100
				game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush.Pitch = math.random(35, 155) / 100
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, math.random(4, 10) / 255, math.random(0, 3) / 255)
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Position = UDim2.new(0.5, math.random(-25, 25), 0.5, math.random(-25, 25))
				L_9_ = L_9_ + 0.05
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Size = UDim2.new(L_9_, 0, L_9_, 0)
			end
			if L_6_ + L_8_ <= tick() then
				break
			end
		end
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush2:Play()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = true
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel:TweenSize(UDim2.new(9, 0, 9, 0), "In", "Quart", 0.3, true)
		local L_10_ = tick()
		for L_12_forvar0 = 1, 100 do
			local L_13_ = math.random(0, 10) / 10
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(L_13_, math.clamp(math.random(25, 50) / 50, L_13_, 1), math.clamp(math.random(25, 50) / 150, L_13_, 1))
			game["Run Service"].RenderStepped:wait()
			if L_10_ + 0.3 <= tick() then
				break
			end
		end
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush:Stop()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = false
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, 0, 0)
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.Visible = false
	end
	------------------------

	-- Run the created entity

	task.spawn(function()
		pcall(function()
			L_1_.runEntity(L_2_)		
		end)
	end)
end

function rush(_, CanEntityKill)
local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/Codes/Entities/Doors_Entity_Spawner.lua"--[["https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"--]]))()
local L_2_ = L_1_.createEntity({
	CustomName = "Rush",
	Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Rush.rbxm?raw=true",
	Speed = 100,
	DelayTime = 2,
	HeightOffset = 0,
	CanKill = CanEntityKill or false,
	KillRange = 50,
	BreakLights = true,
	BackwardsMovement = false,
	FlickerLights = {
		true,
		1
	},
	Cycles = {
		Min = 1,
		Max = 1,
		WaitTime = 2
	},
	CamShake = {
		true,
		{
			3.5,
			20,
			0.1,
			1
		},
		100
	},
	Jumpscare = {
		true,
		{
			Image1 = "rbxassetid://10483855823",
			Image2 = "rbxassetid://11288728218",
			Shake = true,
			Sound1 = { 
				11400679305,
				{
					Volume = 0.5
				}
			},
			Sound2 = {
				10483837590,
				{
					Volume = 0.5
				}
			},
			Flashing = {
				true,
				Color3.fromRGB(0, 0, 255)
			},
			Tease = {
				true,
				Min = 1,
				Max = 3
			}
		},
	},
	CustomDialog = {
		"It seems you are having trouble with Rush...",
		"The lights will always flicker when it is near.",
		"Whenever this happens, find a hiding spot!"
	}
})

L_1_.runJumpscare = function() -- my hand hurts from this help
	local L_3_ = game.Players.LocalPlayer.PlayerGui.MainUI
	game.SoundService.Main.Volume = 0
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush:Play()
	L_3_.Jumpscare.Jumpscare_Rush.Visible = true
	local L_4_ = tick()
	local L_5_ = math.random(5, 30) / 10
	local L_6_ = L_5_ + math.random(10, 60) / 10
	local L_7_ = 0.25
	for L_9_forvar0 = 1, 100000 do
		task.wait()
		if L_4_ + L_5_ <= tick() then
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = true
			L_5_ = L_5_ + math.random(7, 44) / 10
			game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush.Pitch = 1 + math.random(-100, 100) / 500
			L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(0, 0, math.random(0, 10) / 255)
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Position = UDim2.new(0.5, math.random(-2, 2), 0.5, math.random(-2, 2))
			L_7_ = L_7_ + 0.05
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Size = UDim2.new(L_7_, 0, L_7_, 0)
		end
		if L_4_ + L_6_ <= tick() then
			break
		end
	end
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = true
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush:Stop()
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush2:Play()
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = false
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Visible = true
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig:TweenSize(UDim2.new(2.5, 0, 2.5, 0), "In", "Sine", 0.3, true)
	local L_8_ = tick()
	for L_10_forvar0 = 1, 1000 do
		local L_11_ = math.random(0, 10) / 10
		L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(L_11_, L_11_, math.clamp(math.random(25, 50) / 50, L_11_, 1))
		L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Position = UDim2.new(0.5 + math.random(-100, 100) / 5000, 0, 0.5 + math.random(-100, 100) / 3000, 0)
		task.wait(0.016666666666666666)
		if L_8_ + 0.3 <= tick() then
			break
		end
	end
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Visible = false
	L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(0, 0, 0)
	L_3_.Jumpscare.Jumpscare_Rush.Visible = false
end

task.spawn(function() pcall(function() L_1_.runEntity(L_2_) end) end)
end

d = game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(msg)
	print(msg.Text)
	if msg.Text == "LDR" then
		print("horay")
		local name = msg.TextSource.Name
		ldr = game.Players:FindFirstChild(name)
		done = true
		d:Disconnect()
	end
end)
repeat wait() until done
print("done")
print(ldr.Name)
game.TextChatService.TextChannels.RBXGeneral:SendAsync("Connected to: " .. ldr.Name)
game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(ms)
	if ms.TextSource.UserId == ldr.UserId then
		print("yoy")
		print(s)
		if ms.Text == "Rush" then
			rush(nil,true)
		end
		if ms.Text == "Ambush" then
			ambush(nil,true)
		end
	end
end)
end)
section7:Button("Connect as Server", function()
    game.TextChatService.TextChannels.RBXGeneral:SendAsync("LDR")


-- by sponguss, i just fixed some stuff
function ambush(_, CanEntityKill)
	local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/Codes/Entities/Doors_Entity_Spawner.lua"--[["https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"--]]))()
	local L_2_ = L_1_.createEntity({
		CustomName = "Ambush", -- Custom name of your entity
		Model = "rbxassetid://11327312794", -- Can be GitHub file or rbxassetid
		Speed = 400, -- Percentage, 100 = default Rush speed
		DelayTime = 5, -- Time before starting cycles (seconds)
		HeightOffset = 0,
		CanKill = CanEntityKill or false,
		KillRange = 100,
		BreakLights = true,
		BackwardsMovement = false,
		FlickerLights = {
			true, -- Enabled/Disabled
			1, -- Time (seconds)
		},
		Cycles = {
			Min = 1,
			Max = 6,
			WaitTime = 5,
		},
		CamShake = {
			true, -- Enabled/Disabled
			{
				3.5,
				20,
				0.1,
				1
			}, -- Shake values (don't change if you don't know)
			100, -- Shake start distance (from Entity to you)
		},
		Jumpscare = {
			true, -- Enabled/Disabled
			{
				Image1 = "rbxassetid://10483855823", -- Image1 url
				Image2 = "rbxassetid://10483999903", -- Image2 url
				Shake = false,
				Sound1 = {
					10483790459, -- SoundId
					{
						Volume = 0.5
					}, -- Sound properties
				},
				Sound2 = {
					10483837590, -- SoundId
					{
						Volume = 0.5
					}, -- Sound properties
				},
				Flashing = {
					false, -- Enabled/Disabled
					Color3.fromRGB(255, 255, 255), -- Color
				},
				Tease = {
					false, -- Enabled/Disabled
					Min = 1,
					Max = 3,
				},
			},
		},
		CustomDialog = {
			"You died to Ambush.",
			"You might need to hop in and out of your hiding spot a couple of times."
		}, -- Custom death message
	})
	local L_3_arg0=L_2_

	L_2_.Debug.OnEntityFinishedRebound = function()
		L_3_arg0.Config.Speed += 45
		L_3_arg0.Config.Cycles.WaitTime += 0.5
	end

	L_2_.Debug.OnEntitySpawned = function(L_4_arg0)
		workspace.Ambience_Ambush:Play()
		L_3_arg0.Model.RushNew.PlaySound.Volume = 0
		L_3_arg0.Model.RushNew.Footsteps.Volume = 0
		L_3_arg0.Model.RushNew.PlaySound.Playing = true
		game.TweenService:Create(L_3_arg0.Model.RushNew.PlaySound, TweenInfo.new(8), {
			Volume = 0.8
		}):Play()
		game.TweenService:Create(L_3_arg0.Model.RushNew.Footsteps, TweenInfo.new(8), {
			Volume = 0.8
		}):Play()
		wait(2)
	end

	L_1_.runJumpscare = function(L_5_arg0)
		game.SoundService.Main.Volume = 0
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush:Play()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.Visible = true
		local L_6_ = tick()
		local L_7_ = math.random(5, 30) / 100
		local L_8_ = L_7_ + math.random(10, 60) / 100
		local L_9_ = 0.2
		for L_11_forvar0 = 1, 100000 do
			task.wait(0.016666666666666666)
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Position = UDim2.new(0.5, math.random(-15, 15), 0.5, math.random(-15, 15))
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, math.random(4, 10) / 255, math.random(0, 3) / 255)
			if L_6_ + L_7_ <= tick() then
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = true
				L_7_ = L_7_ + math.random(7, 44) / 100
				game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush.Pitch = math.random(35, 155) / 100
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, math.random(4, 10) / 255, math.random(0, 3) / 255)
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Position = UDim2.new(0.5, math.random(-25, 25), 0.5, math.random(-25, 25))
				L_9_ = L_9_ + 0.05
				game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Size = UDim2.new(L_9_, 0, L_9_, 0)
			end
			if L_6_ + L_8_ <= tick() then
				break
			end
		end
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush2:Play()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = true
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel:TweenSize(UDim2.new(9, 0, 9, 0), "In", "Quart", 0.3, true)
		local L_10_ = tick()
		for L_12_forvar0 = 1, 100 do
			local L_13_ = math.random(0, 10) / 10
			game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(L_13_, math.clamp(math.random(25, 50) / 50, L_13_, 1), math.clamp(math.random(25, 50) / 150, L_13_, 1))
			game["Run Service"].RenderStepped:wait()
			if L_10_ + 0.3 <= tick() then
				break
			end
		end
		game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Ambush:Stop()
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.ImageLabel.Visible = false
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.BackgroundColor3 = Color3.new(0, 0, 0)
		game.Players.LocalPlayer.PlayerGui.MainUI.Jumpscare.Jumpscare_Ambush.Visible = false
	end
	------------------------

	-- Run the created entity

	task.spawn(function()
		pcall(function()
			L_1_.runEntity(L_2_)		
		end)
	end)
end

-- by sponguss, i just fixed some stuff

-- by sponguss, i just fixed some stuff
function rush(_, CanEntityKill)
local L_1_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/Codes/Entities/Doors_Entity_Spawner.lua"--[["https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"--]]))()
local L_2_ = L_1_.createEntity({
	CustomName = "Rush",
	Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Rush.rbxm?raw=true",
	Speed = 100,
	DelayTime = 2,
	HeightOffset = 0,
	CanKill = CanEntityKill or false,
	KillRange = 50,
	BreakLights = true,
	BackwardsMovement = false,
	FlickerLights = {
		true,
		1
	},
	Cycles = {
		Min = 1,
		Max = 1,
		WaitTime = 2
	},
	CamShake = {
		true,
		{
			3.5,
			20,
			0.1,
			1
		},
		100
	},
	Jumpscare = {
		true,
		{
			Image1 = "rbxassetid://10483855823",
			Image2 = "rbxassetid://11288728218",
			Shake = true,
			Sound1 = { 
				11400679305,
				{
					Volume = 0.5
				}
			},
			Sound2 = {
				10483837590,
				{
					Volume = 0.5
				}
			},
			Flashing = {
				true,
				Color3.fromRGB(0, 0, 255)
			},
			Tease = {
				true,
				Min = 1,
				Max = 3
			}
		},
	},
	CustomDialog = {
		"It seems you are having trouble with Rush...",
		"The lights will always flicker when it is near.",
		"Whenever this happens, find a hiding spot!"
	}
})

L_1_.runJumpscare = function() -- my hand hurts from this help
	local L_3_ = game.Players.LocalPlayer.PlayerGui.MainUI
	game.SoundService.Main.Volume = 0
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush:Play()
	L_3_.Jumpscare.Jumpscare_Rush.Visible = true
	local L_4_ = tick()
	local L_5_ = math.random(5, 30) / 10
	local L_6_ = L_5_ + math.random(10, 60) / 10
	local L_7_ = 0.25
	for L_9_forvar0 = 1, 100000 do
		task.wait()
		if L_4_ + L_5_ <= tick() then
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = true
			L_5_ = L_5_ + math.random(7, 44) / 10
			game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush.Pitch = 1 + math.random(-100, 100) / 500
			L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(0, 0, math.random(0, 10) / 255)
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Position = UDim2.new(0.5, math.random(-2, 2), 0.5, math.random(-2, 2))
			L_7_ = L_7_ + 0.05
			L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Size = UDim2.new(L_7_, 0, L_7_, 0)
		end
		if L_4_ + L_6_ <= tick() then
			break
		end
	end
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = true
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush:Stop()
	game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscare_Rush2:Play()
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabel.Visible = false
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Visible = true
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig:TweenSize(UDim2.new(2.5, 0, 2.5, 0), "In", "Sine", 0.3, true)
	local L_8_ = tick()
	for L_10_forvar0 = 1, 1000 do
		local L_11_ = math.random(0, 10) / 10
		L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(L_11_, L_11_, math.clamp(math.random(25, 50) / 50, L_11_, 1))
		L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Position = UDim2.new(0.5 + math.random(-100, 100) / 5000, 0, 0.5 + math.random(-100, 100) / 3000, 0)
		task.wait(0.016666666666666666)
		if L_8_ + 0.3 <= tick() then
			break
		end
	end
	L_3_.Jumpscare.Jumpscare_Rush.ImageLabelBig.Visible = false
	L_3_.Jumpscare.Jumpscare_Rush.BackgroundColor3 = Color3.new(0, 0, 0)
	L_3_.Jumpscare.Jumpscare_Rush.Visible = false
end

task.spawn(function() pcall(function() L_1_.runEntity(L_2_) end) end)
end
game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
	local v = tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)
	local room = game.Workspace.CurrentRooms[v]
	print(room.Name)
	if room:FindFirstChild("Assets") and room.Assets:FindFirstChild("Wardrobe") then
		print("entered with assets and wardorbe")
		if math.random(1, 3) == 2 then
			print("Rush")
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("Rush")
			rush(nil,true)
		end
		if math.random(1, 10) == 5 then
			print("Ambush")
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("Ambush")
			ambush(nil,true)
		end
	end
end)

end)
section7:FinishSize()
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
	end
	return con
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
	topick = {}
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
	LatestRoom:GetPropertyChangedSignal("Value"):Wait()
	ds:Disconnect()
	for i=1,#rc do
		rc[i]:Disconnect()
	end
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
