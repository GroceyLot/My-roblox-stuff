local Lib = {Plrs = {}, Connected = false, Connection = nil}


function Lib:InitConnections()
	game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] ServerSide executor ran, waiting for connections")
	Lib.Connection = game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(function(ms)
		if ms.Text == "[GSX Internal] Recieved connection request, adding to playerlist" then
			table.insert(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] ServerSide executor ran, waiting for connections" then
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved connection request, adding to playerlists")
			table.insert(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection added")
		end
		if ms.Text == "[GSX Internal] Request to remove self from playerlist"then
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved removal request, removing")
			table.remove(Lib.Plrs, ms.TextSource)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Connection removed")
		end
		for i=1, #Lib.Plrs do
			if Lib.Plrs[i] == ms.TextSource and ms.MetaData ~= nil and ms.Text == "[GSX Internal] Script send request" then
				game.TextChatService.TextChannels.RBXGeneral:SendAsync("[GSX Internal] Recieved script, running")
				loadstring(ms.MetaData)
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
return Lib
