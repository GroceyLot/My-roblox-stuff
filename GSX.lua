local Lib = {Plrs = {}, Connected = false, Connection = nil}

if _G.GSX then
	Lib = _G.GSX
	return Lib
end

function Lib:InitConnections()
	if Lib.Connected and Lib.Connection ~= nil then
		return
	end
	Lib.Connection = game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(ms)
		if ms.Text == "[GSX Internal] Recieved connection request, adding to playerlists" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			table.insert(Lib.Plrs, ms.TextSource)
			wait(0.1)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] ServerSide executor ran, waiting for connections" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			wait(0.1)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved connection request, adding to playerlists")
			wait(0.1)
			table.insert(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] Request to remove self from playerlist" and ms.TextSource.Name ~= game.Players.LocalPlayer.Name then
			wait(0.1)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved removal request, removing")
			wait(0.1)
			table.remove(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection removed")
		end
		for i=1, #Lib.Plrs do
			if Lib.Plrs[i] == ms.TextSource and ms.TextSource.Name ~= game.Players.LocalPlayer.Name and ms.Metadata ~= nil and ms.Text == "[GSX Internal] Script send request" then
				print(ms.Metadata)
				local cod = ms.Metadata
				loadstring(cod)
				wait(0.1)
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script, running")
			end
			if Lib.Plrs[i] == ms.TextSource and ms.Metadata ~= nil and ms.Text == "[GSX Internal] Script send request for: "..game.Players.LocalPlayer.Name then
				print(ms.Metadata)
				local cod = ms.Metadata
				loadstring(cod)
				wait(0.1)
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script for client, running")
			end
		end
	end)
	Lib.Connected = true
	wait(0.1)
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] ServerSide executor ran, waiting for connections")
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
	local cod = code
	loadstring(cod)
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script send request", cod)
end
function Lib:GetPlayers()
	return Lib.Plrs
end
function Lib:ExecuteForPlayer(plr, code)
	if plr then
		local cod = code
		game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Script send request for: "..plr.Name, cod)
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

_G.GSX = Lib

return Lib


