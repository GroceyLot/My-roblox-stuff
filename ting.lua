local CF = CFrame.new
local Esp = loadstring(game:HttpGet("https://github.com/mstudio45/MSDOORS/raw/main/ESP/Source.lua"))()
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart
local ws = 2
local des = true
local kes = true
local st = true
local nso = true
local it = true
local hbw = true
local fbd = {}
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
            v.Enabled = true;
        end;
    end;
    fbd[4]:Disconnect()
end
--// ok actual code starts here
 
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * ws/50)
        end
    end)
end)
 
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if nso == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)
 
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if it == true then
        fireproximityprompt(prompt)
    end
end)
 
local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
   
    if tostring(self) == 'Screech' and method == "FireServer" and st == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and hbw == true then
        args[2] = true
        return old(self,unpack(args))
    end
   
    return old(self,...)
end))
 
workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and st == true then
        child:Destroy()
    end
end)

function newroom()
	Esp:ClearESP()
	local newroom = game.Workspace.CurrentRooms[tostring(LatestRoom.Value)]
	local door = newroom.Door
	if des then
		Esp:HighlightESP({
			Model = door.Door.Sign or door.SignPhysical,
			Name = "Door " .. tostring(LatestRoom.Value),
			FillColor = Color3.new(1,1,0),
			OutlineColor = Color3.new(1,1,0),
			TextColor = Color3.new(1,1,0),
			FillTransparency = 1,
			OutlineTransparency = 1
		})
	end
	if kes then
		for i=1, #newroom:GetDescendants() do
			if newroom:GetDescendants()[i].Name == "KeyObtain" then
				Esp:HighlightESP({
					Model = newroom:GetDescendants()[i],
					Name = "Key",
					FillColor = Color3.new(0,1,1),
					OutlineColor = Color3.new(0,1,1),
					TextColor = Color3.new(0,1,1),
					FillTransparency = 0.65,
					OutlineTransparency = 0
				})
			end
		end
	end
end
LatestRoom:GetPropertyChangedSignal("Value"):Connect(newroom)
fb()
