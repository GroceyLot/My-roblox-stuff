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
