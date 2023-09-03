local Player = game.Players.LocalPlayer
function CompleteLevel()
	local LevelNumber = Player.PlayerScripts.CurrentLevel.Value
	local Level
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Model") and v.Name == tostring(LevelNumber) then
			Level = v
		end
	end
	if Level then
		game:GetService("ReplicatedStorage").BeatLevel:FireServer(LevelNumber)
		return true
	end
end
while true do
	wait(0.1)
	CompleteLevel()
end
