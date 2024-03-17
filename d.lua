local activityLog = {}
local classes = game.HttpService:JSONDecode(game:HttpGet("https://anaminus.github.io/rbx/json/api/latest.json"))

-- Utility Functions
local function isCharacterDescendant(instance)
    local current = instance
    while current do
        if current:IsA("Model") and current:FindFirstChildOfClass("Humanoid") then
            return true
        end
        current = current.Parent
    end
    return false
end

local function logActivity(action, instance, property, value)
    if not isCharacterDescendant(instance) then
        table.insert(activityLog, {
            action = action,
            path = instance:GetFullName(),
            property = property,
            value = tostring(value)
        })
    end
end

-- Replace this with your method to retrieve a list of properties to monitor for a given class name.
local function GetPropertyListForClass(className)
    -- Example: return {"Position", "Size"} for "Part"
    return {} -- You will fill this out.
end

local function monitorInstance(instance)
    -- Monitor property changes
    local properties = GetPropertyListForClass(instance.ClassName)
    for _, propertyName in ipairs(properties) do
        instance:GetPropertyChangedSignal(propertyName):Connect(function()
            logActivity("PropertyChanged", instance, propertyName, instance[propertyName])
        end)
    end
    
    -- Monitor attribute changes
    instance.AttributeChanged:Connect(function(attributeName)
        logActivity("AttributeChanged", instance, attributeName, instance:GetAttribute(attributeName))
    end)
    
    -- Monitor changes in path (Parent changes)
    instance:GetPropertyChangedSignal("Parent"):Connect(function()
        logActivity("PathChanged", instance, "Parent", instance.Parent:GetFullName())
    end)
end

-- Monitor creation and deletion
local function onDescendantAdded(descendant)
    if not isCharacterDescendant(descendant) then
        logActivity("Created", descendant, "", "")
        monitorInstance(descendant)
    end
end

local function onDescendantRemoving(descendant)
    if not isCharacterDescendant(descendant) then
        logActivity("Removed", descendant, "", "")
    end
end

game.DescendantAdded:Connect(onDescendantAdded)
game.DescendantRemoving:Connect(onDescendantRemoving)

-- Optionally, to immediately start monitoring existing descendants:
for _, descendant in ipairs(game:GetDescendants()) do
    if not isCharacterDescendant(descendant) then
        monitorInstance(descendant)
    end
end

repeat wait() until _G.end

local dump = game.HttpService:JSONEncode(activityLog)

game:HttpPost("grocey.xyz/roblox/dump.php"..dump)