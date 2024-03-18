local HttpService = game:GetService("HttpService")
local URL = "https://anaminus.github.io/rbx/json/api/latest.json"

local Classes = {}

function GetAPIData()
	local success, response = pcall(function()
		return HttpService:GetAsync(URL) 
	end)

	if success then
		return response
	else
		warn(response)

		task.wait(3)

		return GetAPIData()
	end
end

local function ProcessApiData()
	local apiData = GetAPIData()
	
	apiData = HttpService:JSONDecode(apiData)
	
	for _, entry in ipairs(apiData) do
		local entryType = entry.type

		if entryType == "Class" then
			
			local className = entry.Name
			local Superclass = entry.Superclass
			local classData = {}
			
			if Superclass then
				local superclassData = Classes[Superclass]

				if superclassData then
					for _, data in ipairs(superclassData) do
						table.insert(classData, data)
					end
				end
			end

			Classes[className] = classData
			
		elseif entryType == "Property" then
			
			local className = entry.Class
			local propertyName = entry.Name

			if not next(entry.tags) then
				local classData = Classes[className]

				if classData then
					table.insert(classData, propertyName)
				end
			end
		end
	end
end

ProcessApiData()

return function(ClassName: string)
	return Classes[ClassName]
end