-- Define a function to recursively find objects with 'haste' in their name and print their paths and classes
local function findAndPrintPathsAndClasses(object, path, search)
    -- Update the current path
    local currentPath = path and path .. "." .. object.Name or object.Name
    
    -- Check if the object's name contains 'haste'
    if string.find(object.Name:lower(), search:lower()) then
        -- Print the current path and the class of the object
        print("Path: " .. currentPath .. ", Class: " .. object.ClassName)
    end
    
    -- Loop through all children of the current object
    for _, child in ipairs(object:GetChildren()) do
        -- Recursively call this function for each child
        findAndPrintPathsAndClasses(child, currentPath, search)
    end
end

-- Start the search from the game object, with no initial path
findAndPrintPathsAndClasses(game, nil, "haste")
