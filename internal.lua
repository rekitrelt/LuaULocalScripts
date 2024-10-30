-- Instances:

local savedcode = {}
local exec = Instance.new("ScreenGui")

local lp = game.Players.LocalPlayer
exec.Name = "exec"
exec.Parent = game.CoreGui
exec.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local HttpService = game:GetService("HttpService")
local outer = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local main = Instance.new("Frame")
local Code = Instance.new("ScrollingFrame")
local codee = Instance.new("StringValue")
local codees = Instance.new("StringValue")
local input = Instance.new("TextBox")
local Scripts = Instance.new("ScrollingFrame")
local COPY = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local X = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")
local Buttons = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Exec = Instance.new("TextButton")
local Save = Instance.new("TextBox")
local Tabs = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local COPY_2 = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local butt = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local X_2 = Instance.new("TextButton")
local UIGradient_5 = Instance.new("UIGradient")
local NotFocus = Instance.new("UIGradient")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_6 = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local Buttons_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local yes = Instance.new("TextButton")
local no = Instance.new("TextButton")
local confirm = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIGradient_7 = Instance.new("UIGradient")
local TextLabel_3 = Instance.new("TextLabel")
local Buttons_3 = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local yes_2 = Instance.new("TextButton")
local no_2 = Instance.new("TextButton")
local open = Instance.new("TextButton")
local UIGradient_8 = Instance.new("UIGradient")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")

local filesaves = {}

local function savecode(inst, value)
	savedcode[inst] = value
	if inst:FindFirstChild("butt") then
		filesaves[inst.butt.Text] = value
	else
		filesaves[inst.Text] = value
	end
	local filecontent = HttpService:JSONEncode(filesaves)
	writefile("internalscripts.json", filecontent)
end

--Properties:

local uiaspect = Instance.new("UIAspectRatioConstraint")
uiaspect.AspectRatio = 1.77
uiaspect.Parent = outer

outer.Name = "outer"
outer.Parent = exec
outer.AnchorPoint = Vector2.new(0.5, 0.5)
outer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
outer.BorderColor3 = Color3.fromRGB(255, 255, 255)
outer.BorderSizePixel = 0
outer.Position = UDim2.new(0.500899792, 0, 0.448383093, 0)
outer.Size = UDim2.new(0.373725206, 0, 0.424875617, 0)
outer.Visible = false
outer.ZIndex = 0

UICorner.CornerRadius = UDim.new(0.0250000004, 5)
UICorner.Parent = outer

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(45, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 0, 0))}
UIGradient.Rotation = 53
UIGradient.Parent = outer

TextLabel.Parent = outer
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0159996767, 0, 0.0175000429, 0)
TextLabel.Size = UDim2.new(0.454838723, 0, 0.137931034, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/Michroma.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.Text = "Client Executor"
TextLabel.TextColor3 = Color3.fromRGB(134, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = outer
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.922999978, 0, 0.0175000001, 0)
Close.Size = UDim2.new(0.0600000024, 0, 0.137999758, 0)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 4)
Close.TextSize = 35.000
Close.TextWrapped = true

main.Name = "main"
main.Parent = outer
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 1.000
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.5, 0, 0.569999993, 0)
main.Size = UDim2.new(0.967741907, 0, 0.793103456, 0)
main.ZIndex = 2

Code.Name = "Code"
Code.Parent = main
Code.Active = true
Code.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Code.BorderColor3 = Color3.fromRGB(0, 0, 0)
Code.BorderSizePixel = 0
Code.Position = UDim2.new(0, 0, 0.100000001, 0)
Code.Size = UDim2.new(0.75, 0, 0.800000012, 0)
Code.CanvasSize = UDim2.new(0, 0, 50, 0)
Code.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Code.ScrollBarThickness = 8
Code.VerticalScrollBarInset = Enum.ScrollBarInset.Always

input.Name = "input"
input.Parent = Code
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundTransparency = 1.000
input.BorderColor3 = Color3.fromRGB(0, 0, 0)
input.BorderSizePixel = 0
input.Size = UDim2.new(1, 0, 1, 0)
input.ClearTextOnFocus = false
input.Font = Enum.Font.SourceSans
input.MultiLine = true
input.PlaceholderText = "print(\"hello world!\")"
input.Text = ""
input.TextColor3 = Color3.fromRGB(234, 234, 234)
input.TextSize = 16.000
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top

Scripts.Name = "Scripts"
Scripts.Parent = main
Scripts.Active = true
Scripts.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Scripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scripts.BorderSizePixel = 0
Scripts.Position = UDim2.new(0.75, 0, 0.100000001, 0)
Scripts.Size = UDim2.new(0.25, 0, 0.800000012, 0)
Scripts.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Scripts.ScrollBarThickness = 8
Scripts.VerticalScrollBarInset = Enum.ScrollBarInset.Always

COPY.Name = "COPY"
COPY.Parent = Scripts
COPY.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
COPY.BackgroundTransparency = 0.750
COPY.BorderColor3 = Color3.fromRGB(0, 0, 0)
COPY.BorderSizePixel = 0
COPY.Size = UDim2.new(0.850000024, 0, 0.0500000007, 0)
COPY.Visible = false
COPY.Font = Enum.Font.SourceSansBold
COPY.TextColor3 = Color3.fromRGB(255, 255, 255)
COPY.TextSize = 21.000
COPY.TextStrokeTransparency = 0.000
COPY.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(121, 0, 2)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(58, 0, 0))}
UIGradient_2.Rotation = 53
UIGradient_2.Parent = COPY

X.Name = "X"
X.Parent = COPY
X.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
X.BackgroundTransparency = 0.750
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(1, 0, 0, 0)
X.Size = UDim2.new(0.150000006, 0, 1, 0)
X.Font = Enum.Font.SourceSansBold
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextSize = 21.000
X.TextStrokeTransparency = 0.000
X.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(121, 0, 2)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(58, 0, 0))}
UIGradient_3.Rotation = 53
UIGradient_3.Parent = X

UIListLayout.Parent = Scripts
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Buttons.Name = "Buttons"
Buttons.Parent = main
Buttons.BackgroundColor3 = Color3.fromRGB(33, 0, 0)
Buttons.BorderColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0, 0, 0.899999976, 0)
Buttons.Size = UDim2.new(1, 0, 0.100000001, 0)

UIListLayout_2.Parent = Buttons
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Exec.Name = "Exec"
Exec.Parent = Buttons
Exec.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Exec.BackgroundTransparency = 0.850
Exec.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exec.BorderSizePixel = 0
Exec.Size = UDim2.new(0.5, 0, 1, 0)
Exec.Font = Enum.Font.SourceSansBold
Exec.Text = "Execute"
Exec.TextColor3 = Color3.fromRGB(255, 255, 255)
Exec.TextSize = 25.000
Exec.TextWrapped = true

Save.Name = "Save"
Save.Parent = Buttons
Save.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Save.BackgroundTransparency = 0.850
Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.668019891, 0, 0, 0)
Save.Size = UDim2.new(0.5, 0, 1, 0)
Save.Font = Enum.Font.SourceSansBold
Save.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Save.PlaceholderText = "Save"
Save.Text = ""
Save.TextColor3 = Color3.fromRGB(212, 212, 212)
Save.TextSize = 25.000

Tabs.Name = "Tabs"
Tabs.Parent = main
Tabs.Active = true
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0, 0, -0.0145169385, 0)
Tabs.Size = UDim2.new(0, 602, 0, 25)
Tabs.CanvasSize = UDim2.new(50, 0, 0, 0)
Tabs.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Tabs.ScrollBarThickness = 3

UIListLayout_3.Parent = Tabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.000500000024, 0)

COPY_2.Name = "COPY"
COPY_2.Parent = Tabs
COPY_2.BackgroundColor3 = Color3.fromRGB(255, 94, 0)
COPY_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
COPY_2.BorderSizePixel = 0
COPY_2.Size = UDim2.new(0.00350000011, 0, 1, 0)
COPY_2.Visible = false

UIListLayout_4.Parent = COPY_2
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

butt.Name = "butt"
butt.Parent = COPY_2
butt.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
butt.BackgroundTransparency = 0.800
butt.BorderColor3 = Color3.fromRGB(0, 0, 0)
butt.BorderSizePixel = 0
butt.Size = UDim2.new(0.850000024, 0, 1, 0)
butt.Font = Enum.Font.SourceSansBold
butt.Text = "New Tab"
butt.TextColor3 = Color3.fromRGB(255, 255, 255)
butt.TextSize = 21.000
butt.TextStrokeTransparency = 0.000
butt.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(221, 0, 4)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(147, 0, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(93, 0, 0))}
UIGradient_4.Rotation = 53
UIGradient_4.Parent = butt

X_2.Name = "X"
X_2.Parent = COPY_2
X_2.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
X_2.BackgroundTransparency = 1.000
X_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
X_2.BorderSizePixel = 0
X_2.Position = UDim2.new(0.844136059, 0, 0, 0)
X_2.Size = UDim2.new(0.150000006, 0, 1, 0)
X_2.ZIndex = 2
X_2.Font = Enum.Font.SourceSansBold
X_2.Text = "X"
X_2.TextColor3 = Color3.fromRGB(255, 255, 255)
X_2.TextSize = 21.000
X_2.TextStrokeTransparency = 0.000
X_2.TextWrapped = true

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(121, 0, 2)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(58, 0, 0))}
UIGradient_5.Rotation = 53
UIGradient_5.Parent = X_2

NotFocus.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(121, 0, 2)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(58, 0, 0))}
NotFocus.Rotation = 53
NotFocus.Name = "NotFocus"
NotFocus.Parent = COPY_2

confirm.Name = "confirm"
confirm.Parent = outer
confirm.Active = true
confirm.AnchorPoint = Vector2.new(0.5, 0.5)
confirm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
confirm.BorderColor3 = Color3.fromRGB(0, 0, 0)
confirm.BorderSizePixel = 0
confirm.Position = UDim2.new(0.5, 0, 0.5, 0)
confirm.Size = UDim2.new(0.800000012, 0, 0.5, 0)
confirm.Visible = false
confirm.ZIndex = 3

UICorner_2.CornerRadius = UDim.new(0.075000003, 0)
UICorner_2.Parent = confirm

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(45, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 0, 0))}
UIGradient_6.Rotation = 53
UIGradient_6.Parent = confirm

TextLabel_2.Parent = confirm
TextLabel_2.Active = true
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(1, 0, 0.800000012, 0)
TextLabel_2.ZIndex = 3
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Are you sure you want to close this tab and clear the editor?"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000
TextLabel_2.TextWrapped = true

Buttons_2.Name = "Buttons"
Buttons_2.Parent = confirm
Buttons_2.AnchorPoint = Vector2.new(0.5, 0)
Buttons_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Buttons_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Buttons_2.BorderSizePixel = 0
Buttons_2.Position = UDim2.new(0.5, 0, 0.75, 0)
Buttons_2.Size = UDim2.new(0.5, 0, 0.200000003, 0)
Buttons_2.ZIndex = 3

UIListLayout_5.Parent = Buttons_2
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 2)

yes.Name = "yes"
yes.Parent = Buttons_2
yes.BackgroundColor3 = Color3.fromRGB(45, 0, 0)
yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
yes.BorderSizePixel = 0
yes.Position = UDim2.new(-2.54313164e-07, 0, 0, 0)
yes.Size = UDim2.new(0.495967746, 0, 1, 0)
yes.Font = Enum.Font.SourceSansBold
yes.Text = "Yes"
yes.TextColor3 = Color3.fromRGB(255, 255, 255)
yes.TextSize = 25.000
yes.TextWrapped = true

no.Name = "no"
no.Parent = Buttons_2
no.BackgroundColor3 = Color3.fromRGB(45, 0, 0)
no.BorderColor3 = Color3.fromRGB(0, 0, 0)
no.BorderSizePixel = 0
no.Position = UDim2.new(0.16966629, 0, 0, 0)
no.Size = UDim2.new(0.495967746, 0, 1, 0)
no.Font = Enum.Font.SourceSansBold
no.Text = "Cancel"
no.TextColor3 = Color3.fromRGB(255, 255, 255)
no.TextSize = 25.000
no.TextWrapped = true

open.Name = "open"
open.Parent = exec
open.Visible = false
open.AnchorPoint = Vector2.new(0.5, 0.5)
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.BorderColor3 = Color3.fromRGB(0, 0, 0)
open.BorderSizePixel = 0
open.Position = UDim2.new(0.5, 0, 0.100000001, 0)
open.Size = UDim2.new(0.0209958013, 0, 0.043532338, 0)
open.Font = Enum.Font.SourceSansBold
open.Text = ""
open.TextColor3 = Color3.fromRGB(255, 0, 0)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(45, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 0, 0))}
UIGradient_8.Rotation = 53
UIGradient_8.Parent = open

UICorner_4.CornerRadius = UDim.new(0.0250000004, 5)
UICorner_4.Parent = open

TextLabel_4.Parent = open
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 1, 0, 0)
TextLabel_4.Size = UDim2.new(1, -1, 1, 0)
TextLabel_4.ZIndex = 0
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.LineHeight = 0.000
TextLabel_4.Text = "O"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 0, 4)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 1.000
TextLabel_4.TextWrapped = true

codee.Name = "code"
codee.Parent = COPY_2

local UIS = game:GetService('UserInputService')
local prevmouse = UIS.MouseIconEnabled
local function enabledragthing(thing)
	local frame = thing
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
enabledragthing(outer)
enabledragthing(open)

open.MouseButton1Click:Connect(function()
	local menuwasopen = outer.Visible
	--open.Visible = false
	outer.Visible = true
	UIS.MouseIconEnabled = menuwasopen and prevmouse or not menuwasopen
end)


local scriptframe = Scripts
local textbox = Save
local copyframe = COPY_2 -- tabs copy
local focusedtab
local closetab

codees.Name = "code"
codees.Parent = COPY

local function makenewtab()
	local newtab = copyframe:Clone()
	newtab.Parent = main.Tabs
	newtab.Visible = true
	newtab.butt.Text = "New Tab"
	newtab.Name = "New Tab"
	savecode(newtab, "")
	newtab.NotFocus.Enabled = false
	newtab.X.MouseButton1Click:Connect(function()
		closetab(newtab)
	end)
	newtab.butt.MouseButton1Click:Connect(function()
		if #savedcode[newtab] >= 200_000 then
			confirm.Visible = true
			confirm.TextLabel.Text = newtab.butt.Text.." is too big to load, would you like to execute it?"
			local noanswer
			local yesanswer = confirm.Buttons.yes.MouseButton1Click:Once(function()
				noanswer:Disconnect()
				confirm.Visible = false
				loadstring(savedcode[newtab])()
			end)
			noanswer = confirm.Buttons.no.MouseButton1Click:Once(function()
				yesanswer:Disconnect()
				confirm.Visible = false
			end)
		else
			 -- save old tab
			savecode(focusedtab, main.Code.input.Text)
			focusedtab.NotFocus.Enabled = true

			main.Code.input.Text = savedcode[newtab]
			newtab.NotFocus.Enabled = false
			focusedtab = newtab
		end
	end)
	return newtab
end

function closetab(newtab)
	confirm.TextLabel.Text = "Would you like to close "..newtab.butt.Text.."?"

	main.Parent.confirm.Visible = true
	local noclick
	local yesclick = main.Parent.confirm.Buttons.yes.MouseButton1Click:Once(function()
		main.Parent.confirm.Visible = false
		noclick:Disconnect()
		if focusedtab == newtab then
			main.Code.input.Text = ""
			newtab:Destroy()
			local loopfound = nil
			for _, v in pairs(main.Tabs:GetChildren()) do
				if v ~= copyframe and v.Name ~= "UIListLayout" then
					loopfound = v
					break
				end
			end
			if not loopfound then
				focusedtab = makenewtab()
			else
				focusedtab = loopfound
				focusedtab.NotFocus.Enabled = false
				main.Code.input.Text = savedcode[focusedtab]
			end
		else
			newtab:Destroy()
		end
	end)
	noclick = main.Parent.confirm.Buttons.no.MouseButton1Click:Once(function()
		main.Parent.confirm.Visible = false
		yesclick:Disconnect()
	end)
end

local function onFocused()
	textbox.BackgroundTransparency = 0
end

local function onFocusLost()
	textbox.BackgroundTransparency = 0.85
	if main.Code.input.Text ~= "" and textbox.Text ~= "" then
		local savedscript = scriptframe.COPY:Clone()
		savedscript.Parent = scriptframe
		savedscript.Visible = true
		savedscript.Text = textbox.Text
		savecode(savedscript, main.Code.input.Text)
		savedscript.MouseButton1Click:Connect(function()
			if #savedcode[savedscript] >= 200_000 then
				confirm.Visible = true
				confirm.TextLabel.Text = savedscript.Text.." is too big to load, would you like to execute it?"
				local noanswer
				local yesanswer = confirm.Buttons.yes.MouseButton1Click:Once(function()
					noanswer:Disconnect()
					confirm.Visible = false
					loadstring(savedcode[savedscript])()
				end)
				noanswer = confirm.Buttons.no.MouseButton1Click:Once(function()
					yesanswer:Disconnect()
					confirm.Visible = false
				end)
			else
				local newtab = copyframe:Clone()
				newtab.Parent = main.Tabs
				newtab.Visible = true
				newtab.butt.Text = savedscript.Text
				newtab.Name = savedscript.Text
				savecode(newtab, savedcode[savedscript])
				newtab.X.MouseButton1Click:Connect(function()
					closetab(newtab)
				end)
				newtab.butt.MouseButton1Click:Connect(function()
					savecode(focusedtab, main.Code.input.Text) -- save old tab
					focusedtab.NotFocus.Enabled = true

					main.Code.input.Text = savedcode[newtab]
					newtab.NotFocus.Enabled = false
					focusedtab = newtab
				end)
			end
		end)
		savedscript.X.MouseButton1Click:Connect(function()
			confirm.Visible = true
			confirm.TextLabel.Text = "Are you sure you want to delete "..savedscript.Text.."?"
			local noanswer
			local yesanswer = confirm.Buttons.yes.MouseButton1Click:Once(function()
				savedscript:Destroy()
				noanswer:Disconnect()
				confirm.Visible = false
			end)
			noanswer = confirm.Buttons.no.MouseButton1Click:Once(function()
				yesanswer:Disconnect()
				confirm.Visible = false
			end)
		end)
	end
	textbox.Text = ""
end

if isfile("internalscripts.json") then
	local savedscripts = HttpService:JSONDecode(readfile("internalscripts.json"))
	for i, v in pairs(savedscripts) do
		if i ~= "" and v ~= "" then
			local savedscript = scriptframe.COPY:Clone()
			savedscript.Parent = scriptframe
			savedscript.Visible = true
			savedscript.Text = i
			savecode(savedscript, v)
			savedscript.MouseButton1Click:Connect(function()
				if #savedcode[savedscript] >= 200_000 then
					confirm.Visible = true
					confirm.TextLabel.Text = savedscript.Text.." is too big to load, would you like to execute it?"
					local noanswer
					local yesanswer = confirm.Buttons.yes.MouseButton1Click:Once(function()
						noanswer:Disconnect()
						confirm.Visible = false
						loadstring(savedcode[savedscript])()
					end)
					noanswer = confirm.Buttons.no.MouseButton1Click:Once(function()
						yesanswer:Disconnect()
						confirm.Visible = false
					end)
				else
					local newtab = copyframe:Clone()
					newtab.Parent = main.Tabs
					newtab.Visible = true
					newtab.butt.Text = savedscript.Text
					newtab.Name = savedscript.Text
					savecode(newtab, savedcode[savedscript])
					newtab.X.MouseButton1Click:Connect(function()
						closetab(newtab)
					end)
					newtab.butt.MouseButton1Click:Connect(function()
						savecode(focusedtab, main.Code.input.Text) -- save old tab
						focusedtab.NotFocus.Enabled = true

						main.Code.input.Text = savedcode[newtab]
						newtab.NotFocus.Enabled = false
						focusedtab = newtab
					end)
				end
			end)
			savedscript.X.MouseButton1Click:Connect(function()
				confirm.Visible = true
				confirm.TextLabel.Text = "Are you sure you want to delete "..savedscript.Text.."?"
				local noanswer
				local yesanswer = confirm.Buttons.yes.MouseButton1Click:Once(function()
					savedcode[savedscript] = nil
					if savedscript:FindFirstChild("butt") then
						filesaves[savedscript.butt.Text] = nil
					else
						filesaves[savedscript.Text] = nil
					end
					local filecontent = HttpService:JSONEncode(filesaves)
					writefile("internalscripts.json", filecontent)

					savedscript:Destroy()

					noanswer:Disconnect()
					confirm.Visible = false
				end)
				noanswer = confirm.Buttons.no.MouseButton1Click:Once(function()
					yesanswer:Disconnect()
					confirm.Visible = false
				end)
			end)
		end
	end
end

textbox.FocusLost:Connect(onFocusLost)
textbox.Focused:Connect(onFocused)
focusedtab = makenewtab()

Exec.MouseButton1Click:Connect(function()
	local codeinput = input.Text
	if codeinput:lower() == "exit" or codeinput:lower() == "close" or codeinput:lower() == "panic" then
		exec:Destroy()
	else
		loadstring(codeinput)()
	end
end)

Close.MouseButton1Click:Connect(function()
	local menuwasopen = outer.Visible
	--open.Visible = true
	outer.Visible = false
	UIS.MouseIconEnabled = menuwasopen and prevmouse or not menuwasopen
end)

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Insert then
		local menuwasopen = outer.Visible
		--open.Visible = menuwasopen
		outer.Visible = not menuwasopen
		UIS.MouseIconEnabled = menuwasopen and prevmouse or not menuwasopen
	end
end)
