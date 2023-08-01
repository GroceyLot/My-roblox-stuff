local placeid = game.PlaceId
local list = {1242235469 = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Ball%20and%20Axe%20GUI.lua", 6839171747 = "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/GSDoors.lua", 189707 = "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/Natural%20Disaster%20Survival%20GUI.lua", 8712817601 = "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Barry's%20Prison%20Run%20GUI"}
for i, v in pairs(list) do
  if tonumber(i) == placeid then
    loadstring(game:HttpGet(v))()
  end
end
