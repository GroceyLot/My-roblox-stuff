local placeid = game.PlaceId
local ids = {1242235469, 6839171747, 8712817601, 2768379856, 155615604}
local list = {"https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Ball%20and%20Axe%20GUI.lua", "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/GSDoors.lua",  "https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Barry's%20Prison%20Run%20GUI", "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/3008.lua", "https://github.com/GroceyLot/My-roblox-stuff/raw/Things/GSPrisonLife.lua"}
for i = 1, # ids do
  if ids[i] == placeid then
    loadstring(game:HttpGet(list[i]))()
  end
end
