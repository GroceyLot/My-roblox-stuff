-- // Only allow to be executed once
assert(not getgenv().AntiKickExecuted, "Anti Kick is already running!")

-- // Services
local Players = game:GetService("Players")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local KickAttemptFormat = "Kick attempted for: %s"
local BlockedMethods = {"Kick", "kick"}

-- // What to do when Kick detected
local function kickDetected(Player, Reason)
   warn(KickAttemptFormat:format(Reason))
end

-- // Index hook
hookfunction(LocalPlayer.Kick, kickDetected)

-- // Namecall hook
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
-- // Vars
local args = {...}
local method = getnamecallmethod()

-- // Check if kick attempt
if (self == LocalPlayer and table.find(BlockedMethods, method)) then
   -- // Alert
   kickDetected(self, args[1])

   -- // Cancel it
   return
end

-- // Return - so everything else that uses namecall does not break
return __namecall(self, ...)
end)

-- // Credits
getgenv().AntiKickExecuted = true

local loady = nil

-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()

-- Create Window
local Window = Library:AddWindow({
   title = {"Grocey", "Universal Script"},
   theme = {
      Accent = Color3.fromRGB(0, 255, 0)
   },
   key = Enum.KeyCode.M,
   default = true
})


-- Create Tab
local Scripts = Window:AddTab("Scripts", {default = true})
local GameSpecific = Window:AddTab("Game Specific", {default = false})
local Features = Window:AddTab("Features", {default = false})
local Settings = Window:AddTab("Settings", {default = false})


-- Create Section
local Scriptsec1 = Scripts:AddSection("Dex", {default = false})
local Scriptsec2 = Scripts:AddSection("InfiniteYield", {default = false})
local Scriptsec3 = Scripts:AddSection("Vynixius", {default = false})
local Scriptsec4 = Scripts:AddSection("Game Scripts", {default = false})

-- Create Button
local Button = Scriptsec1:AddButton("Load", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

local Button2 = Scriptsec2:AddButton("Load", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Button3 = Scriptsec3:AddButton("Load", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua'))()
end)

local Button4 = Scriptsec4:AddButton("MSHUB", function()
loadstring(game:HttpGet('https://scripts.luawl.com/hosted/5055/19915/MSHUB_LOADER.lua'))()
end)

local Button12 = Scriptsec4:AddButton("Prison Life", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Demarrr/Roblox-Hax/master/Prison%20Life%20v2.0%20GUI%20Revamped.txt"),true))()
end)

local Button14 = Scriptsec4:AddButton("Arsenal", function()
loadstring(game:HttpGet('https://pastebin.com/raw/T3fzg7tm', true))()
end)

local Button16 = Scriptsec4:AddButton("Adopt Me", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/TestForCry/robloxhacks/master/Adopt%20Me', true))()
end)

local Button17 = Scriptsec4:AddButton("Jailbreak", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5d4b0843f800d5dcac07568e18190b7e.lua"))()
end)

local Button20 = Scriptsec4:AddButton("Grocey - Loader", function()
loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/GLoader.lua"))()
end)
-- Create Box
local Box = Scriptsec4:AddBox("Loadstring url", {fireonempty = false}, function(text)
loady = text
end)

local Button19 = Scriptsec4:AddButton("Run", function()
loadstring(game:HttpGet(loady, true))()
end)

if game.PlaceId == 189707 then
   local autowin = false
   game.Workspace.ContentModel.Status:GetPropertyChangedSignal("Value"):Connect(function()
   if autowin and game.Workspace.ContentModel.Status.Value == "New Map" then
      while true do
         wait(1)
         if game.Workspace.ContentModel.Status.Value ~= "Survivers" and autowin then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-280, 180, 340))
         else
            break
         end
      end
   end
   end)
   local a = GameSpecific:AddSection("Natural Disaster Survival", {default = false})
   local a1 = a:AddToggle("AFKGrind", {default = false}, function(bool)
   autowin = bool
   end)
end
if game.PlaceId == 5736409216 then
   _G.dod = false
   local a = GameSpecific:AddSection("Mall Tycoon", {default = false})
   local a1 = a:AddToggle("Auto collect", {default = false}, function(bool)
   _G.dod = bool
   end)
   local player = game.Players.LocalPlayer
   local char = player.Character
   local tycoon = game.Workspace["Tycoon"..player.Name]

   game.RunService.Heartbeat:Connect(function()
   if _G.dod then
      wait(0.1)
      firetouchinterest(tycoon.Floor1.Structure.CashMachine.ButtonCollect.Button, char.LeftFoot, 0)
      wait(0.1)
      firetouchinterest(tycoon.Floor1.Structure.CashMachine.ButtonCollect.Button, char.LeftFoot, 1)

   end
   end)

end
if game.PlaceId == 155615604 then
   _G.dode = false
   local a = GameSpecific:AddSection("Prison Life", {default = false})
   local a1 = a:AddToggle("Loop kill all", {default = false}, function(bool)
   _G.dode = bool
   end)
   function ting()
      if _G.dode then
         local plrs = game.Players:GetChildren()
         for i=1,#plrs do
            pcall(function()
            local char = game.Players.LocalPlayer.Character
            if plrs[i].Character:FindFirstChild("HumanoidRootPart") then
               if plrs[i] ~= game.Players.LocalPlayer then
                  for j=1,30 do
                     char:MoveTo(plrs[i].Character.HumanoidRootPart.Position)
                     game.ReplicatedStorage.meleeEvent:FireServer(plrs[i])
                     wait(0.001)
                  end
               end
               wait(0.1)
            end
            end)
            if not _G.dode then
               game.RunService.Heartbeat:Once(ting)
               return
            end
         end
      end
      game.RunService.Heartbeat:Once(ting)
   end
   game.RunService.Heartbeat:Once(ting)
end
local settingssec = Settings:AddSection("Main", {default = true})

-- Create Picker
local Picker = settingssec:AddPicker("Accent Colour", {color = Color3.fromRGB(85, 235, 186)}, function(color)
Window:SetAccent(color)
end)

local Bind = settingssec:AddBind("Menu Bind", Enum.KeyCode.M, {default = false, flag = "Bind_Flag"}, function(keycode)
Window:SetKey(keycode)
end)

local Button18 = settingssec:AddButton("Unload", function()
game.CoreGui["Vynixius UI Library"]:Destroy()
end)


local Featsec1 = Features:AddSection("Player", {default = false})

local Featsec2 = Features:AddSection("Combat", {default = false})

local Featsec3 = Features:AddSection("Visuals", {default = false})

local Featsec4 = Features:AddSection("Game", {default = false})

-- Create Slider
local Slider = Featsec1:AddSlider("Speed", 15, 100, 16, {default = false, flag = "Slider_Flag1", fireondrag = true, rounded = true}, function(val)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = val
end)

-- Create Slider
local Slider1 = Featsec1:AddSlider("HipHeight", 0, 100, game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight, {default = false, flag = "Slider_Flag", fireondrag = true, rounded = true}, function(val)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight = val
end)
-- Create Slider
local Slider2 = Featsec1:AddSlider("JumpPower", 0, 100, game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower, {default = false, flag = "Slider_Flag2", fireondrag = true, rounded = true}, function(val)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = val
end)


-- Create Slider
local Slider3 = Featsec3:AddSlider("Fov", 20, 120, game.Workspace.CurrentCamera.FieldOfView, {default = false, flag = "Slider_Flag3", fireondrag = true, rounded = true}, function(val)
game.Workspace.CurrentCamera.FieldOfView = val
end)


-- Create Toggle
local Button5 = Featsec1:AddButton("Infinite Jump", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Infinitejump.lua"),true))()
end)

local Button6 = Featsec1:AddButton("Noclip", function()
loadstring(game:HttpGet(("https://pastebin.com/raw/tcMYqCMP"),true))()
end)

local Button19 = Featsec1:AddButton("Invisibility", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Invisible%20Character.txt"))()
end)

local Button7 = Featsec3:AddButton("Esp", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
end)

local Button8 = Featsec2:AddButton("Aimbot", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20Aimbot.txt"))()
end)

local Button9 = Featsec3:AddButton("Fullbright", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XxReisWolfxX/fullbright/main/fbscript"))()
end)

local Button10 = Featsec1:AddButton("Ctrl Click TP", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
end)

local Button15 = Featsec1:AddButton("Backflip + frontflip", function()
loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)

local Button11 = Featsec4:AddButton("BTools", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

