local Log = {}
local InstProp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/InstProp.lua"))()
_G.Logging = true

function UpdateLog()
  for i,v in pairs(game:GetDescendants()) do
    local Object = {Name = v:GetFullName(), Properties = {}}
    for k,w in pairs(InstProp:Get(v.ClassName)) do
      Properties[W] = tostring(v[W])
    end  
    table.insert(Log, Object)
  end
end

while _G.Logging do
  UpdateLog
  task.wait(0.5)
end

local JsonLog = game.HttpService:JSONEncode(Log)

writefile("Log.json", JsonLog)
