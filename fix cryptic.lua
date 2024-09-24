game.CoreGui:WaitForChild("Cryptic").Enabled = true
_G.mainshell = game.CoreGui["Cryptic"].MainShell
_G.mainshell.Visible = true
_G.mainshell.BackgroundTransparency = 1
_G.mainshell.MainFrame.Visible = true
_G.mainshell.MainFrame.BackgroundTransparency = 1
_G.mainshell.Position = UDim2.new(1.5,0,.5,0)
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Visible = true
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Clear.Visible = false
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Copy.Visible = false
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Execute.Visible = false
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Paste.Visible = false
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].Visible = true
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].UIListLayout:Destroy()
_G.mainshell.MainFrame["Script Editor Tab"].Tabs.Visible = false
_G.mainshell.SideShell.Frame.B.Visible = false
_G.mainshell.SideShell.Frame.C.Visible = false
_G.mainshell.SideShell.Frame.F.Visible = false
_G.mainshell.SideShell.Frame.G.Visible = false
_G.mainshell.SideShell.Frame.H.Visible = false
_G.mainshell.SideShell.Frame.UIListLayout:Destroy()
_G.mainshell.SideShell.Frame.BackgroundTransparency = 1
_G.mainshell.SideShell.BackgroundTransparency = 1
_G.mainshell.Version.Visible = false
_G.mainshell.ImageLabel.Visible = false
_G.mainshell.UIAspectRatioConstraint:Destroy()
_G.mainshell.SideShell.Frame.A.Position = UDim2.new(-24.1,0,-.420,0)
_G.mainshell.SideShell.Frame.D.Position = UDim2.new(-24.1,0,-.420,0)
_G.mainshell.MainFrame["Console Tab"].Position = UDim2.new(-.85,0,.1,0)
_G.mainshell.SideShell.Frame.A.MouseButton1Click:Connect(function()
	spawn(function()
		_G.mainshell.SideShell.Frame.D.Visible = true
		_G.mainshell.SideShell.Frame.A.Visible = false
	end)
end)
_G.mainshell.SideShell.Frame.D.MouseButton1Click:Connect(function()
	spawn(function()
		_G.mainshell.SideShell.Frame.A.Visible = true
		_G.mainshell.SideShell.Frame.D.Visible = false
		_G.mainshell.MainFrame["Script Editor Tab"].Visible = true
	end)
end)
game.CoreGui["Cryptic"].Toggle.Visible = false
--game.Players.LocalPlayer.AutoJumpEnabled = false
--game.Players.LocalPlayer.Character.Humanoid.AutoJumpEnabled = false

local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
    if not Mouse.Target then return end
    Plr.Character.Humanoid.WalkToPoint = Mouse.Hit.p
end)

_G.mainshell.Position = UDim2.new(1.5,0,.5,0)
_G.mainshell.MainFrame["Script Editor Tab"]["Scripting Buttons"].ExecuteClipboard.Position = UDim2.new(-.625,0,-21.4,0)

loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/LuaULocalScripts/main/mobile%20shift%20lock.lua"))()
