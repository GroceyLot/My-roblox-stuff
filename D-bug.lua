-- Define a function to recursively find and print paths of objects with 'haste' in their name
local function findAndPrintHastePaths(object, path)
    -- Update the current path
    local currentPath = path and path .. "." .. object.Name or object.Name
    
    -- Check if the object's name contains 'haste'
    if string.find(object.Name:lower(), "haste") then
        print(currentPath)
    end
    
    -- Loop through all children of the current object
    for _, child in ipairs(object:GetDescendants()) do
        -- Recursively call this function for each child
        findAndPrintHastePaths(child, currentPath)
    end
end

-- Start the search from the game object, with no initial path
findAndPrintHastePaths(game, nil)
