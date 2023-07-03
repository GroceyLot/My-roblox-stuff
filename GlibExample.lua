loadstring(game:HttpGet("https://raw.githubusercontent.com/GroceyLot/My-roblox-stuff/Things/Glib.lua"))()
local window = Glib.init( --Create Window
  Color3.new(0.2,0.2,0.2), --Backcolor
  Color3.new(0.3,0.3,0.3), --Frontcolor
  Color3.new(1,1,1), --Textcolor
  "Glib" --Text
)
for i=1, 10 do
  Glib.AddToggle( --Add Toggle
    window, --Window
    "Hello", --Text
    tostring(i) --Name/ID
  )
  Glib.ConnectToggle(
    window, --Window
    tostring(i), --Id of the button
    function(value) --Function (value is a bool)
      if value then
      local newpart = Instance.new("Part")
      newpart.Parent = game.Workspace
      end
    end
  )
end
