local Log = {}
local InstProp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/InstProp.lua"))()
local tim = 0
_G.Logging = true

function UpdateLog()
  for i,v in pairs(game:GetDescendants()) do
    local Object = {Name = v:GetFullName(), Properties = {}}
    for j,w in pairs(InstProp:Get(v.ClassName)) do
      Properties[w] = tostring(v[w])
    end
    local dod = true
    for k=#Log,1, -1 do
      if Log[k] == Object then
        dod = false
        break
      end
    end
    if dod then
      table.insert(Log, Object)
    end
  end
end

while _G.Logging do
  UpdateLog()
  task.wait(0.5)
  tim = tim + 0.5
end

local JsonLog = game.HttpService:JSONEncode(Log)

writefile("Log.json", JsonLog)
