if not fakeplr then
	fakeplr = 45223049 -- User ID of who you want to become 
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
				if b.Name == "PlayerName" and b.ClassName == "TextLabel" then
					setname({b, alias})
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
