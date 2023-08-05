local Lib = {Plrs = {}, Connected = false, Connection = nil}

if getgenv().GSX then
	Lib = getgenv().GSX
	return Lib
end

function Lib:InitConnections()
	if Lib.Connected and Lib.Connection ~= nil then
		return
	end
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] ServerSide executor ran, waiting for connections")
	Lib.Connection = game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(ms)
		if ms.Text == "[GSX Internal] Recieved connection request, adding to playerlist" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			table.insert(Lib.Plrs, ms.TextSource)
			wait()
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] ServerSide executor ran, waiting for connections" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved connection request, adding to playerlists")
			wait()
			table.insert(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] Request to remove self from playerlist" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved removal request, removing")
			wait()
			table.remove(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection removed")
		end
		for i=1, #Lib.Plrs do
			if Lib.Plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Script send request" then
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script, running", ms.MetaData)
				wait()
				loadstring(ms.MetaData)
			end
			if Lib.Plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Script send request for: "..game.Players.LocalPlayer.Name then
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script for client, running", ms.MetaData)
				wait()
				loadstring(ms.MetaData)
			end
			if Lib.Plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Recieved script, running" then
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script completed by: "..ms.TextSource.Name)
			end
			if Lib.Plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Recieved script for client, running" then
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script for: "..ms.TextSource.Name.." completed")
			end
		end
	end)
	Lib.Connected = true
end
function Lib:Disconnect()
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Request to remove self from playerlist")
	Lib.Connection:Disconnect()
	Lib.Connection = nil
	Lib.Connected = false
	Lib.Plrs = {}
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection removed")
end
function Lib:ServerSideExecute(code)
	loadstring(code)
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script send request", code)
end
function Lib:GetPlayers()
	return Lib.Plrs
end
function Lib:ExecuteForPlayer(plr, code)
	if plr then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script send request for: "..plr.Name, code)
	end
end

game.Players.PlayerRemoving:Connect(function(plr)
	if plr == game.Players.LocalPlayer then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Request to remove self from playerlist")
		Lib.Connection:Disconnect()
		Lib.Connection = nil
		Lib.Connected = false
		Lib.Plrs = {}
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection removed")
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Leaving game")
	end
end)

getgenv().GSX = Lib

return Lib

