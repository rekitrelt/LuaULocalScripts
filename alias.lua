if not fakeplr or tonumber(fakeplr) == 0 then
	fakeplr = 1 -- User ID of who you want to become 
end
if not plricon then
	plricon = "" -- image for icon
end
if not plremoji then
	plremoji = "" -- emoji e.g.  for verified
end

local lp = game.Players.LocalPlayer
local alias = game:GetService("Players"):GetNameFromUserIdAsync(fakeplr)
local oldvalues = {}

local function setimage(v)
	local image = v[1]
	local imagestring = v[2]
	image.Image = imagestring
	image:GetPropertyChangedSignal("Image"):Connect(function()
		if string.find(image.Image, lp.UserId) then
			local textv = imagestring
			image.Image = textv
		end
	end)
end

local function setname(v)
	local name = v[1]
	local nametext = v[2]
	name.Text = nametext
	name:GetPropertyChangedSignal("Text"):Connect(function()
		if string.find(name.Text, lp.DisplayName) or string.find(name.Text, lp.Name) then
			local textv = nametext
			name.Text = textv
		end
	end)
end

local function tabbar()
	for _, v in pairs(game.CoreGui.RoactAppExperimentProvider:GetDescendants()) do
		if v.Name == "p_"..tostring(lp.UserId) then
			for _, b in pairs(v:GetDescendants()) do
				if b.Name == "PlayerName" and b.ClassName == "Frame" and b.Parent.Name == "OverlayFrame" then
					for _, c in pairs(b:GetChildren()) do
						c:Destroy()
					end
					local objs = game:GetObjects("rbxassetid://71118221200082")
					local inst = objs[1]
					inst.Emoji.Text = plremoji
					setname({inst.ChildrenWrapper.PlayerName, alias})
					inst.Parent = b
				end
				if b.Name == "PlayerIcon" and b.ClassName == "ImageLabel" then
					if plricon ~= "" then
						setimage({b, "rbxthumb://type=Asset&id="..tostring(plricon).."&w=150&h=150"})
					end
				end
			end
		end
		if v.Name == "ScrollingFrameContainer" then
			task.spawn(function()
				while not v:FindFirstChild("PlayerDropDown") do task.wait() end
				for _, c in pairs(v.PlayerDropDown:GetDescendants()) do
					if c.Name == "AvatarImage" and c.ClassName == "ImageLabel" then
						setimage({c, "rbxthumb://type=AvatarHeadShot&id="..tostring(fakeplr).."&w=150&h=150"})
					
						for _, b in pairs(c.Parent:GetDescendants()) do
							if (b.Name == "PlayerName" or b.Name == "DisplayName") and b.ClassName == "TextLabel" then
								setname({b, alias})
							end
						end
					end
				end
			end)
		end
	end
end
tabbar()

for i, b in pairs(game.CoreGui.RobloxGui.SettingsClippingShield:GetDescendants()) do
    if b.Name == "PageViewInnerFrame" then
        task.spawn(function()
            while not b:FindFirstChild("Players") do task.wait() end
            while not b.Players:FindFirstChild("PlayerLabel"..lp.Name) do task.wait() end
            local v = b.Players["PlayerLabel"..lp.Name]
            if v then
                setimage({v.Icon, "rbxthumb://type=Avatar&id="..tostring(fakeplr).."&w=100&h=100"})
                local displayname = v:FindFirstChild("DisplayNameLabel")
                local normname = v:FindFirstChild("NameLabel")
                if normname then
                    setname({normname, "@"..alias})
                end
                if displayname then
                    setname({displayname, alias})
                end
            end
        end)
    end
end

game.CoreGui.ChildRemoved:Connect(function(child)
    if child.Name == "RoactAppExperimentProvider" then
        while not game.CoreGui:FindFirstChild("RoactAppExperimentProvider") do task.wait() end
        while not game.CoreGui.RoactAppExperimentProvider:FindFirstChild("Children") do task.wait() end
        tabbar()
    end
end)
