local CreateLibrary = function(v, a)
	local Library = {
	    ["Data"] = {
            ["Version"] = v,
            ["Author"] = a
        }
	}

	return Library
end

local Library = CreateLibrary("v2", "Rain")

local TweenService = game:GetService("TweenService")

function TweenSize(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {Size = Property["Size"]}):Play()

	return Tween
end

function TweenTextTransparency(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {TextTransparency = Property["Transparency"]}):Play()

	return Tween
end

function TweenBackgroundTransparency(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {BackgroundTransparency = Property["Transparency"]}):Play()

	return Tween
end

function TweenBackgroundColor(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {BackgroundColor3 = Property["Color"]}):Play()

	return Tween
end

function TweenTextColor(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {TextColor3 = Property["Color"]}):Play()

	return Tween
end

function TweenPosition(Object, Property)
	local Tween = TweenService:Create(Object, TweenInfo.new(Property["Time"]), {Position = Property["Position"]}):Play()

	return Tween
end

function Library.new(Name, Settings)
    function SettingParsing(_)
        local Settings = _ --Array {}

        if Settings["AntiDupe"] == true then
            local Storage = game.Players.LocalPlayer.PlayerGui

            if Storage:FindFirstChild(Name) then
                local GuiTarget = Storage:FindFirstChild(Name)
                GuiTarget:Destroy()

                return (true)
            else
                return (false)
            end
        end
    end

    SettingParsing(Settings)

    local Gui = Instance.new("ScreenGui")
    local Shadow = Instance.new("ImageLabel")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local Tabs = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local TabContainor = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Frames = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")

    Gui.Name = Name
    Gui.ResetOnSpawn = false
    Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Shadow.Name = "Shadow"
    Shadow.Parent = Gui
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.BackgroundTransparency = 1.000
    Shadow.Position = UDim2.new(0.386141866, 0, 0.697546005, 0)
    Shadow.Size = UDim2.new(0, 515, 0, 358)
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(36, 21, 21)
    Shadow.ImageTransparency = 0.700
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

    function dragify(Frame)
        dragToggle = nil
        dragSpeed = .25 -- You can edit this.
        dragInput = nil
        dragStart = nil
        dragPos = nil
        
        function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
        end
        
        Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        dragToggle = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
        if (input.UserInputState == Enum.UserInputState.End) then
        dragToggle = false
        end
        end)
        end
        end)
        
        Frame.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        dragInput = input
        end
        end)
        
        game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
        updateInput(input)
        end
        end)
    end
    
    dragify(Shadow)

    Main.Name = "Main"
    Main.Parent = Shadow
    Main.BackgroundColor3 = Color3.fromRGB(49, 52, 62)
    Main.Position = UDim2.new(0.0135907065, 0, 0.0168463308, 0)
    Main.Size = UDim2.new(0, 501, 0, 346)

    UICorner.CornerRadius = UDim.new(0, 3)
    UICorner.Parent = Main

    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0199600793, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 112, 0, 31)
    TextLabel.Font = Enum.Font.GothamSemibold
    TextLabel.Text = Name
    TextLabel.TextColor3 = Color3.fromRGB(115, 127, 167)
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    Tabs.Name = "Tabs"
    Tabs.Parent = Main
    Tabs.BackgroundColor3 = Color3.fromRGB(33, 35, 42)
    Tabs.Position = UDim2.new(0, 0, 0.0895953774, 0)
    Tabs.Size = UDim2.new(0, 122, 0, 315)

    UICorner_2.CornerRadius = UDim.new(0, 1)
    UICorner_2.Parent = Tabs

    TabContainor.Name = "TabContainor"
    TabContainor.Parent = Tabs
    TabContainor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainor.BackgroundTransparency = 1.000
    TabContainor.Position = UDim2.new(0, 0, 0.0190476198, 0)
    TabContainor.Size = UDim2.new(0, 121, 0, 309)

    UIListLayout.Parent = TabContainor
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Frames.Name = "Frames"
    Frames.Parent = Main
    Frames.BackgroundColor3 = Color3.fromRGB(27, 28, 34)
    Frames.Position = UDim2.new(0.243512973, 0, 0, 0)
    Frames.Size = UDim2.new(0, 379, 0, 346)

    UICorner_3.CornerRadius = UDim.new(0, 1)
    UICorner_3.Parent = Frames

    Main.MouseEnter:Connect(function()
        TweenTextColor(TextLabel, {
            ["Time"] = 0.6,
            ["Color"] = Color3.fromRGB(143, 158, 206)
        })
    end)

    Main.MouseLeave:Connect(function()
        TweenTextColor(TextLabel, {
            ["Time"] = 0.6,
            ["Color"] = Color3.fromRGB(115, 127, 167)
        })
    end)

    local Library = CreateLibrary("v1", "Rain (ArskyCache)")

    function Library.Tab(Name, Size)
        local TabButton = Instance.new("TextButton")
        local TabFrame = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        TabButton.Name = Name
        TabButton.Parent = TabContainor
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 121, 0, 22)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.Text = Name
        TabButton.TextColor3 = Color3.fromRGB(144, 144, 144)
        TabButton.TextSize = 13.000
        TabButton.TextWrapped = true

        TabFrame.Name = Name
        TabFrame.Parent = Frames
        TabFrame.BackgroundColor3 = Color3.fromRGB(27, 28, 34)
        TabFrame.Position = UDim2.new(-0.00186961889, 0, 0, 0)
        TabFrame.Size = UDim2.new(0, 379, 0, 346)

        UICorner_4.CornerRadius = UDim.new(0, 1)
        UICorner_4.Parent = TabFrame

        ScrollingFrame.Parent = TabFrame
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1.000
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Position = UDim2.new(0, 0, 0.0202312134, 0)
        ScrollingFrame.Size = UDim2.new(0, 379, 0, 339)
        ScrollingFrame.BottomImage = ""
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, tonumber(Size), 0)
        ScrollingFrame.ScrollBarThickness = 3
        ScrollingFrame.TopImage = ""
        ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

        UIListLayout_2.Parent = ScrollingFrame
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 2)

        TabButton.MouseButton1Down:Connect(function()
            for _,Frame in pairs(Frames:GetChildren()) do
                if Frame:IsA("Frame") then
                    Frame.Visible = false
                end
            end

            for _,Frame in pairs(Frames:GetChildren()) do
                if Frame:IsA("Frame") then
                    if Frame.Name == Name then
                        Frame.Visible = true
                    end
                end
            end

            for _,Btn in pairs(TabContainor:GetChildren()) do
                if Btn:IsA("TextButton") then
                    TweenTextColor(Btn, {
                        ["Time"] = 0.6,
                        ["Color"] = Color3.fromRGB(144, 144, 144)
                    })
                end
            end

            for _,Btn in pairs(TabContainor:GetChildren()) do
                if Btn:IsA("TextButton") then
                    if Btn.Name == Name then
                        TweenTextColor(Btn, {
                            ["Time"] = 0.6,
                            ["Color"] = Color3.fromRGB(182, 182, 182)
                        })
                    end
                end
            end
        end)
        
        local Library = CreateLibrary("v1", "Rain (ArskyCache)")

        function Library.Button(Name, Callback)
            local Containor = Instance.new("Frame")
            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")

            Containor.Name = "Containor"
            Containor.Parent = ScrollingFrame
            Containor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Containor.BackgroundTransparency = 1.000
            Containor.Size = UDim2.new(0, 373, 0, 30)

            TextButton.Parent = Containor
            TextButton.BackgroundColor3 = Color3.fromRGB(49, 52, 62)
            TextButton.Position = UDim2.new(0.0187667552, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 366, 0, 30)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextColor3 = Color3.fromRGB(115, 127, 167)
            TextButton.TextSize = 13.000
            TextButton.TextWrapped = true
            TextButton.Text = Name
            TextButton.AutoButtonColor = false

            UICorner.CornerRadius = UDim.new(0, 1)
            UICorner.Parent = TextButton

            TextButton.MouseEnter:Connect(function()
                TweenTextColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(143, 158, 206)
                })

                TweenBackgroundColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(42, 44, 53)
                })
            end)

            TextButton.MouseLeave:Connect(function()
                TweenTextColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(115, 127, 167)
                })

                TweenBackgroundColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(49, 52, 62)
                })
            end)

            TextButton.MouseButton1Down:Connect(function()
                pcall(Callback)
            end)

            local function Ripple()  
                local Circle = Instance.new("ImageLabel")
            	local script = Instance.new('LocalScript', TextButton)
                Circle.Name = "Circle"
                Circle.Parent = script
                Circle.AnchorPoint = Vector2.new(0.5, 0.5)
                Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle.BackgroundTransparency = 1.000
                Circle.Position = UDim2.new(0.5, 0, 0.5, 0)
                Circle.ZIndex = 10
                Circle.Image = "rbxassetid://266543268"
                Circle.ImageColor3 = Color3.fromRGB(0, 0, 0)
                Circle.ImageTransparency = 0.500
                
                
            	local RippleColor        = Color3.fromRGB(255, 255, 255) -- RGB Color of the ripple effect, you can change it.
            	local RippleTransparency = 0.8 ---------------------------- Max is 1, Min is 0
            	local PixelSize          = 2000 --------------------------- The Max size of the ripple in pixels
            	local TimeLength         = 0.9 ---------------------------- How long the ripple animation is
            	local FadeLength         = 0.6 ---------------------------- How long it takes for the ripple to fade out
            	
            	local frame = TextButton
            	local rgb = Color3.fromRGB
            	local ud2 = UDim2.new
            	repeat
            		wait()
            	until game.Players.LocalPlayer
            	local plr = game.Players.LocalPlayer
            	local mouse = plr:GetMouse()
            	
            	frame.ClipsDescendants = true
            	frame.AutoButtonColor = false
            	
            	
            	function tweenInRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				TimeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				Size = ud2(0, PixelSize, 0, PixelSize);
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            		end)
            	end
            	
            	function fadeOutRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				FadeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				ImageTransparency = 1;
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            			wait(FadeLength + 0.1)
            			ripple:Destroy()
            		end)
            	end
            	
            	frame.MouseButton1Down:Connect(function()
            		local done = false
            		local ripple = script.Circle:Clone()
            		ripple.Parent = frame
            		ripple.ZIndex = frame.ZIndex + 1
            		ripple.ImageColor3 = RippleColor
            		ripple.ImageTransparency = RippleTransparency
            		tweenInRipple(ripple)
            		frame.MouseButton1Up:Connect(function()
            			if done == false then
            				done = true
            				fadeOutRipple(ripple)
            			end
            		end)
            		wait(4);
            		done = true;
            		fadeOutRipple(ripple) -- if it doesnt detect that it was unselected
            	end)
            end

            local Library = CreateLibrary("v1", "Rain (ArskyCache)")

            function Library:UpdateText(Text)
                TextButton.Text = Text
            end

            return Library
        end

        function Library.Textbox(Text, Placeholder, Callback)
            local Containor = Instance.new("Frame")
            local TextBox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")

            Containor.Name = "Containor"
            Containor.Parent = ScrollingFrame
            Containor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Containor.BackgroundTransparency = 1.000
            Containor.Size = UDim2.new(0, 373, 0, 30)

            TextBox.Parent = Containor
            TextBox.BackgroundColor3 = Color3.fromRGB(49, 52, 62)
            TextBox.Position = UDim2.new(0.0189999994, 0, 0, 0)
            TextBox.Size = UDim2.new(0, 366, 0, 30)
            TextBox.Font = Enum.Font.GothamSemibold
            TextBox.PlaceholderColor3 = Color3.fromRGB(77, 85, 112)
            TextBox.Text = Text
            TextBox.TextColor3 = Color3.fromRGB(115, 127, 167)
            TextBox.TextSize = 13.000
            TextBox.PlaceholderText = Placeholder

            UICorner.CornerRadius = UDim.new(0, 1)
            UICorner.Parent = TextBox

            TextBox.MouseEnter:Connect(function()
                TweenTextColor(TextBox, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(143, 158, 206)
                })

                TweenBackgroundColor(TextBox, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(42, 44, 53)
                })
            end)

            TextBox.MouseLeave:Connect(function()
                TweenTextColor(TextBox, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(115, 127, 167)
                })

                TweenBackgroundColor(TextBox, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(49, 52, 62)
                })
            end)

            TextBox.FocusLost:Connect(function()
                pcall(Callback, TextBox.Text)
            end)

            local Library = CreateLibrary("v1", "Rain (ArskyCache)")

            function Library:UpdateText(Text)
                TextBox.Text = Text
            end

            return Library
        end

        function Library.Toggle(Name, Value, Callback)
            local Containor = Instance.new("Frame")
            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")

            Containor.Name = "Containor"
            Containor.Parent = ScrollingFrame
            Containor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Containor.BackgroundTransparency = 1.000
            Containor.Size = UDim2.new(0, 373, 0, 30)

            TextButton.Parent = Containor
            TextButton.BackgroundColor3 = Color3.fromRGB(49, 52, 62)
            TextButton.Position = UDim2.new(0.0187667552, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 366, 0, 30)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextColor3 = Color3.fromRGB(115, 127, 167)
            TextButton.TextSize = 13.000
            TextButton.TextWrapped = true
            TextButton.Text = Name
            TextButton.AutoButtonColor = false

            UICorner.CornerRadius = UDim.new(0, 1)
            UICorner.Parent = TextButton

            TextButton.MouseEnter:Connect(function()
                TweenBackgroundColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(42, 44, 53)
                })
            end)

            TextButton.MouseLeave:Connect(function()
                TweenBackgroundColor(TextButton, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(49, 52, 62)
                })
            end)

            function Toggle(Value, Func)
                if Value == false then
                    TweenTextColor(TextButton, {
                        ["Time"] = 0.6,
                        ["Color"] = Color3.fromRGB(167, 115, 115)
                    })

                    pcall(Func, Value)
                elseif Value == true then
                    TweenTextColor(TextButton, {
                        ["Time"] = 0.6,
                        ["Color"] = Color3.fromRGB(115, 167, 122)
                    })

                    pcall(Func, Value)
                end
            end
            
            local Toggled = Value

            if Toggled == true then
                Toggle(true, function() --[[]] end)
            else
                Toggle(false, function() --[[]] end)
            end

            TextButton.MouseButton1Down:Connect(function()
                if Toggled == true then
                    Toggle(false, Callback)
                    Toggled = false
                elseif Toggled == false then
                    Toggle(true, Callback)
                    Toggled = true
                end
            end)

            local function Ripple()  
                local Circle = Instance.new("ImageLabel")
            	local script = Instance.new('LocalScript', TextButton)
                Circle.Name = "Circle"
                Circle.Parent = script
                Circle.AnchorPoint = Vector2.new(0.5, 0.5)
                Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle.BackgroundTransparency = 1.000
                Circle.Position = UDim2.new(0.5, 0, 0.5, 0)
                Circle.ZIndex = 10
                Circle.Image = "rbxassetid://266543268"
                Circle.ImageColor3 = Color3.fromRGB(0, 0, 0)
                Circle.ImageTransparency = 0.500
                
                
            	local RippleColor        = Color3.fromRGB(255, 255, 255) -- RGB Color of the ripple effect, you can change it.
            	local RippleTransparency = 0.8 ---------------------------- Max is 1, Min is 0
            	local PixelSize          = 2000 --------------------------- The Max size of the ripple in pixels
            	local TimeLength         = 0.9 ---------------------------- How long the ripple animation is
            	local FadeLength         = 0.6 ---------------------------- How long it takes for the ripple to fade out
            	
            	local frame = TextButton
            	local rgb = Color3.fromRGB
            	local ud2 = UDim2.new
            	repeat
            		wait()
            	until game.Players.LocalPlayer
            	local plr = game.Players.LocalPlayer
            	local mouse = plr:GetMouse()
            	
            	frame.ClipsDescendants = true
            	frame.AutoButtonColor = false
            	
            	
            	function tweenInRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				TimeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				Size = ud2(0, PixelSize, 0, PixelSize);
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            		end)
            	end
            	
            	function fadeOutRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				FadeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				ImageTransparency = 1;
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            			wait(FadeLength + 0.1)
            			ripple:Destroy()
            		end)
            	end
            	
            	frame.MouseButton1Down:Connect(function()
            		local done = false
            		local ripple = script.Circle:Clone()
            		ripple.Parent = frame
            		ripple.ZIndex = frame.ZIndex + 1
            		ripple.ImageColor3 = RippleColor
            		ripple.ImageTransparency = RippleTransparency
            		tweenInRipple(ripple)
            		frame.MouseButton1Up:Connect(function()
            			if done == false then
            				done = true
            				fadeOutRipple(ripple)
            			end
            		end)
            		wait(4);
            		done = true;
            		fadeOutRipple(ripple) -- if it doesnt detect that it was unselected
            	end)
            end
        end

        return Library
    end

    function Library.MainPage(Name)
        for _,Frame in pairs(Frames:GetChildren()) do
            if Frame:IsA("Frame") then
                Frame.Visible = false
            end
        end
    
        for _,Frame in pairs(Frames:GetChildren()) do
            if Frame:IsA("Frame") then
                if Frame.Name == Name then
                    Frame.Visible = true
                end
            end
        end
    
        for _,Btn in pairs(TabContainor:GetChildren()) do
            if Btn:IsA("TextButton") then
                TweenTextColor(Btn, {
                    ["Time"] = 0.6,
                    ["Color"] = Color3.fromRGB(144, 144, 144)
                })
            end
        end
    
        for _,Btn in pairs(TabContainor:GetChildren()) do
            if Btn:IsA("TextButton") then
                if Btn.Name == Name then
                    TweenTextColor(Btn, {
                        ["Time"] = 0.6,
                        ["Color"] = Color3.fromRGB(182, 182, 182)
                    })
                end
            end
        end
    end

    return Library
end


local Main = Library.new("Rain Lib", {
    ["AntiDupe"] = true
})

local Tab1 = Main.Tab('Elements', 1) --The 1 is the length of the Scrolling Bar. So if you have more buttons add +1 to it
local Tab2 = Main.Tab('Functions', 1) --The 1 is the length of the Scrolling Bar. So if you have more buttons add +1 to it

Tab1.Button("Button 1", function() --All of these functions have :UpdateText() to use it make the button a local and do LocalName:UpdateText(Text)
    print("Hi")
end)

Tab1.Button("Button 2", function()
    print("Hi")
end)

Tab1.Toggle("Toggle", true, function(Value)
    print(Value)
end)

Tab1.Textbox("", "Text Box 1", function(Text) --(Text, Placeholder Text, Function)
    print(Text)
end)

Tab2.Button("Button 1", function() --All of these functions have :UpdateText() to use it make the button a local and do LocalName:UpdateText(Text)
    print("Hi")
end)

Main.MainPage("Elements")
