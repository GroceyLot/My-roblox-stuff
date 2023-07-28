local ESP = {}
local espfolder = Instance.new("Folder")
function ESP:Clear()
  espfolder:ClearAllChildren()
end
function ESP:AddHighlight(obj, color)
  local esp = Instance.new("Highlight")
  esp.AlwaysOnTop = true
  esp.FillColor = color
  esp.OutlineColor = color
  esp.FillTransparency = 0.65
  esp.Adornee = obj
  esp.Name = obj.Name
  esp.Parent = espfolder
  return esp
end
function ESP:AddText(obj, color, text)
  local BillboardGui = Instance.new("BillboardGui")
  local TextLabel = Instance.new("TextLabel")
  local UIStroke = Instance.new("UIStroke")
  BillboardGui.Parent = espfolder
  BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  BillboardGui.Active = true
  BillboardGui.Adornee = obj
  BillboardGui.AlwaysOnTop = true
  BillboardGui.Size = UDim2.new(0, 1000, 0, 50)
  TextLabel.Parent = BillboardGui
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Font = Enum.Font.Oswald
  TextLabel.TextColor3 = color
  TextLabel.Text = text
  TextLabel.TextScaled = true
  UIStroke.Parent = TextLabel
  return BillboardGui
end
return ESP
