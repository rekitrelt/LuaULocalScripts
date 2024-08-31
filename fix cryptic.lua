game.CoreGui["Cryptics 'Unique' Design"].Enabled = true
game.CoreGui["Cryptics 'Unique' Design"].MainShell.Visible = true
game.CoreGui["Cryptics 'Unique' Design"].MainShell.BackgroundTransparency = 1
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame.Visible = true
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame.BackgroundTransparency = 1
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Visible = true
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Clear.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Copy.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Execute.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Paste.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Visible = true
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].UIListLayout:Destroy()
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"].Tabs.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.B.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.C.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.F.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.G.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.H.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.UIListLayout:Destroy()
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.BackgroundTransparency = 1
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.BackgroundTransparency = 1
game.CoreGui["Cryptics 'Unique' Design"].MainShell.Version.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.ImageLabel.Visible = false
game.CoreGui["Cryptics 'Unique' Design"].MainShell.UIAspectRatioConstraint:Destroy()
game.CoreGui["Cryptics 'Unique' Design"].MainShell.Position += UDim2.new(1,0,0,0)
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.A.Position += UDim2.new(-21.3,0,-.3,0)
game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.D.Position += UDim2.new(-21.3,0,-.3,0)
game.CoreGui["Cryptics 'Unique' Design"].MainShell.Position += UDim2.new(0,0,0,0)
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"]["Scripting Buttons"].ExecuteClipboard.Position += UDim2.new(-.45,0,-8.7,0)
game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Console Tab"].Position += UDim2.new(-1.35,0,0,0)
spawn(function()
	game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.A.MouseButton1Click:Connect(function()
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.D.Visible = true
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.A.Visible = false
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"].Visible = true
	end)
	game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.D.MouseButton1Click:Connect(function()
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.A.Visible = true
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.SideShell.Frame.D.Visible = false
		game.CoreGui["Cryptics 'Unique' Design"].MainShell.MainFrame["Script Editor Tab"].Visible = true
	end)
end)
game.CoreGui["Cryptics 'Unique' Design"].Toggle.Visible = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/LuaULocalScripts/main/mobile%20shift%20lock.lua", true))()
