local placeid = game.PlaceId
local ids = {1242235469, 6839171747, 189707, 8712817601}
local list = {"https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Ball%20and%20Axe%20GUI.lua", "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/GSDoors.lua", "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/Natural%20Disaster%20Survival%20GUI.lua", "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Barry's%20Prison%20Run%20GUI"}
for i = 1, # ids do
  if ids[i] == placeid then
    loadstring(game:HttpGet(list[i]))()
  end
end
