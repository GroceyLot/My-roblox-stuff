local Log = {}
local InstProp = loadstring(game:HttpGet("https://github.com/GroceyLot/My-roblox-stuff/raw/Things/InstProp.lua"))()

function UpdateLog()
  for i,v in pairs(game:GetDescendants()) do
    local Object = {Name = v:GetFullName(), Properties = {}}
    table.insert(Log, Object)
  end
end
