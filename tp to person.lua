function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
TextLabel2 = Instance.new("TextLabel")
LocalScript3 = Instance.new("LocalScript")
TextButton4 = Instance.new("TextButton")
LocalScript5 = Instance.new("LocalScript")
TextBox6 = Instance.new("TextBox")
ScreenGui0.Name = "robottp"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.800000012, 0, 0.319999993, 0)
Frame1.Size = UDim2.new(0, 132, 0, 135)
Frame1.BackgroundColor = BrickColor.new("Black")
Frame1.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
Frame1.BorderColor = BrickColor.new("Really black")
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 0
TextLabel2.Parent = Frame1
TextLabel2.Size = UDim2.new(0, 132, 0, 35)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 0.6000000238418579
TextLabel2.BorderColor = BrickColor.new("Really black")
TextLabel2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "QUALIFY's ugly robot tp"
TextLabel2.TextColor = BrickColor.new("Really black")
TextLabel2.TextColor3 = Color3.new(0, 0, 0)
TextLabel2.TextSize = 14
LocalScript3.Parent = TextLabel2
table.insert(cors,sandbox(LocalScript3,function()
local UIS = game:GetService('UserInputService')
local frame = script.Parent.Parent
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
end))
TextButton4.Parent = Frame1
TextButton4.Position = UDim2.new(0, 0, 0.259259254, 0)
TextButton4.Size = UDim2.new(0, 132, 0, 44)
TextButton4.BackgroundColor = BrickColor.new("Dark grey")
TextButton4.BackgroundColor3 = Color3.new(0.427451, 0.427451, 0.427451)
TextButton4.BackgroundTransparency = 0.5
TextButton4.BorderColor = BrickColor.new("Really black")
TextButton4.BorderColor3 = Color3.new(0, 0, 0)
TextButton4.BorderSizePixel = 0
TextButton4.Font = Enum.Font.SourceSans
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "Teleport!"
TextButton4.TextColor = BrickColor.new("Really black")
TextButton4.TextColor3 = Color3.new(0, 0, 0)
TextButton4.TextSize = 14
LocalScript5.Parent = TextButton4
table.insert(cors,sandbox(LocalScript5,function()
script.Parent.MouseButton1Down:Connect(function()
	local plrn = script.Parent.Parent.TextBox.Text
	if workspace.plam[plrn].map.Value ~= workspace.plam[game.Players.LocalPlayer.Name].map.Value then
			local p = Instance.new("Part")
			p.Name = "TeleMap"
			p.Anchored = true
			p.CanCollide = false
			p.Parent = game:GetService("Workspace")
			local t = Instance.new("StringValue")
			t.Value = workspace.plam[plrn].map.Value
			t.Parent = p
			t.Name = "to"
			local w = Instance.new("Vector3Value")
			w.Value = (workspace.plam[plrn].torso.Value * CFrame.new(0,2.5,0)).Position
			w.Parent = p
			w.Name = "where"
			local c = game:GetService("Workspace"):WaitForChild("char")
			p.Position = c.Position
			workspace.char.CFrame *= CFrame.new(0,1,0)
			spawn(function()
				wait(5)
				p.CanTouch = false
				p.Transparency = 1
			end)
	else
		workspace.char.Position = (workspace.plam[plrn].torso.Value * CFrame.new(0,2.5,0)).Position
	end
end)
end))
TextBox6.Parent = Frame1
TextBox6.Position = UDim2.new(0, 0, 0.585000038, 0)
TextBox6.Size = UDim2.new(0, 132, 0, 56)
TextBox6.BackgroundColor = BrickColor.new("Institutional white")
TextBox6.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox6.BackgroundTransparency = 0.949999988079071
TextBox6.BorderColor = BrickColor.new("Really black")
TextBox6.BorderColor3 = Color3.new(0, 0, 0)
TextBox6.BorderSizePixel = 0
TextBox6.Font = Enum.Font.SourceSans
TextBox6.FontSize = Enum.FontSize.Size14
TextBox6.ClearTextOnFocus = false
TextBox6.Text = ""
TextBox6.TextColor = BrickColor.new("Really black")
TextBox6.TextColor3 = Color3.new(0, 0, 0)
TextBox6.TextSize = 14
TextBox6.PlaceholderColor3 = Color3.new(0.388235, 0.388235, 0.388235)
TextBox6.PlaceholderText = "[Username (NOT DISPLAY)]"
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end