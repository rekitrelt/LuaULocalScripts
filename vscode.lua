spawn(function()
repeat task.wait() until game:IsLoaded()

local lp = game.Players.LocalPlayer
local SMethod = (WebSocket and WebSocket.connect)

if not SMethod then return lp:Kick("Executor is too shitty.") end

local Main = function()
	WebSocket = SMethod("ws://localhost:9000/")
    	local Closed = false

	if not WebSocket then return end

	WebSocket:Send(game.HttpService:JSONEncode({
		Method= "Authorization",
		Name= lp.Name
	}))

	WebSocket.OnMessage:Connect(function(Unparsed)
		local Parsed= game.HttpService:JSONDecode(Unparsed)

		if (Parsed.Method == "Execute") then
			local FFunction, Error= loadstring(Parsed.Data)

			if Error then return WebSocket:Send(game.HttpService:JSONEncode({
				Method= "Error",
				Message= Error
			}))end
			spawn(FFunction)
		end
	end)

	WebSocket.OnClose:Connect(function()
			Closed= true
		end)

		repeat task.wait() until Closed
	end
	
	while task.wait(1) do
		local Success, Error = pcall(Main)
		if not Success then print(Error) return end
	end
end)
