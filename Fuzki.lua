for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Cryptic-XD" then
        v:Destroy() 
    end
end

local TweenService = game:GetService("TweenService")
local Theme = { 
Default = {
    TextColor = Color3.fromRGB(255,255,255),
    ScrollColor = Color3.fromRGB(255,255,255),
    HeaderColor = Color3.fromRGB(255,255,255)
}, 
Red = {
    TextColor = Color3.fromRGB(255,0,0),
    ScrollColor = Color3.fromRGB(255,0,0),
    HeaderColor = Color3.fromRGB(255,0,0)
}, 
Green = {
    TextColor = Color3.fromRGB(120,255,0),
    ScrollColor = Color3.fromRGB(120,255,0),
    HeaderColor = Color3.fromRGB(120,255,0)
}, 
Blue = {
    TextColor = Color3.fromRGB(0,0,255),
    ScrollColor = Color3.fromRGB(0,0,255),
    HeaderColor = Color3.fromRGB(0,0,255)
}, 
   }

local Cryp = {}

function Cryp:AddBind()
    if game.CoreGui["Cryptic-XD"].Enabled then
        game.CoreGui["Cryptic-XD"].Enabled = false
    else
        game.CoreGui["Cryptic-XD"].Enabled = true
    end
end

function Cryp:AddDestroy() 
for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Cryptic-XD" then
        v:Destroy() 
      end
   end
end 

--[[
function Skidded() 
   print("Skid") 
end

function Cryp:YourSkid() 
for _,s in Skid(game.CoreGui:FindFirstSkid("You")) 
   if s == true then
     s:Skidded() 
   end
end
]] 
function Cryp:AddWindow(lol)
    local Name = lol.Name
    local Desc = lol.Desc
    local theme = lol.Color
    if not theme then
        theme = Theme.Default
    end
    if theme == "RedTheme" then
        theme = Theme.Red
elseif theme == "GreenTheme" then
        theme = Theme.Green
elseif theme == "BlueTheme" then
        theme = Theme.Blue
elseif theme == "WhiteTheme" then
        theme = Theme.Default
    end

    name = name or "Cryptic X"
    gameName = gameName or "UI Library"
    local Crypt = {}

    local CrypticXD = Instance.new("ScreenGui")
    local MainLib = Instance.new("Frame")
    local headerLine = Instance.new("Frame")
    local mainCorner = Instance.new("UICorner")
    local tabMain = Instance.new("Frame")
    local tabFrame = Instance.new("Frame")
    local tabList = Instance.new("UIListLayout")
    local lineTab = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local elements = Instance.new("Frame")
    local elementsCorner = Instance.new("UICorner")
    local elementFolder = Instance.new("Folder")

    CrypticXD.Name = "Cryptic-XD"
    CrypticXD.Parent = game.CoreGui
    CrypticXD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 

    MainLib.Name = "MainLib"
    MainLib.Parent = CrypticXD
    MainLib.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MainLib.Position = UDim2.new(0.233,0,0.20)
    MainLib.Size = UDim2.new(0, 469, 0, 350)

    headerLine.Name = "headerLine"
    headerLine.Parent = MainLib
    headerLine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    headerLine.BorderSizePixel = 0
    headerLine.Position = UDim2.new(0, 0, 0.0909090936, 0)
    headerLine.Size = UDim2.new(0, 469, 0, 1)
    headerLine.Visible = false

    mainCorner.Name = "mainCorner"
    mainCorner.Parent = MainLib

    tabMain.Name = "tabMain"
    tabMain.Parent = MainLib
    tabMain.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
    tabMain.BackgroundTransparency = 1.000
    tabMain.BorderSizePixel = 0
    tabMain.Position = UDim2.new(0.0362473354, 0, 0.111570247, 0)
    tabMain.Size = UDim2.new(0, 435, 0, 36)

    tabFrame.Name = "tabFrame"
    tabFrame.Parent = tabMain
    tabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabFrame.BackgroundTransparency = 1.000
    tabFrame.Size = UDim2.new(0, 435, 0, 36)

    tabList.Name = "tabList"
    tabList.Parent = tabFrame
    tabList.FillDirection = Enum.FillDirection.Horizontal
    tabList.HorizontalAlignment = Enum.HorizontalAlignment.Right
    tabList.SortOrder = Enum.SortOrder.LayoutOrder
    tabList.VerticalAlignment = Enum.VerticalAlignment.Bottom
    tabList.Padding = UDim.new(0, 1)

    lineTab.Name = "lineTab"
    lineTab.Parent = tabMain
    lineTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    lineTab.BorderSizePixel = 0
    lineTab.Position = UDim2.new(0, 0, 0.972222209, 0)
    lineTab.Size = UDim2.new(0, 435, 0, 1)

    local UserInputService = game:GetService("UserInputService")

    local TopBar = MainLib

    local Camera = workspace:WaitForChild("Camera")

    local DragMousePosition
    local FramePosition
    local Draggable = false
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = true
            DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            FramePosition = Vector2.new(MainLib.Position.X.Scale, MainLib.Position.Y.Scale)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if Draggable == true then
            local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
            MainLib.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = false
        end
    end)

    title.Name = "title"
    title.Parent = MainLib
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.0362473354, 0, 0, 0)
    title.Size = UDim2.new(0, 200, 0, 44)
    title.Font = Enum.Font.GothamSemibold
    title.Text = Name .."  |  ".. Desc
    title.TextColor3 = theme.TextColor
    title.TextSize = 18.000
    title.TextXAlignment = Enum.TextXAlignment.Left

    elements.Name = "elements"
    elements.Parent = MainLib
    elements.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    elements.BorderSizePixel = 0
    elements.ClipsDescendants = true
    elements.Position = UDim2.new(0.0362473354, 0, 0.198347107, 0)
    elements.Size = UDim2.new(0, 435, 0, 250)

    elementsCorner.CornerRadius = UDim.new(0, 3)
    elementsCorner.Name = "elementsCorner"
    elementsCorner.Parent = elements

    elementFolder.Name = "elementFolder"
    elementFolder.Parent = elements

    function Crypt:AddTab(tab)
        tab = tab or "tab"
        local tabButton = Instance.new("TextButton")
        local tabCorner = Instance.new("UICorner")
        local elementContainer = Instance.new("ScrollingFrame")
        local elementList = Instance.new("UIListLayout")

        tabButton.Name = "tabButton"..tab
        tabButton.Parent = tabFrame
        tabButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        tabButton.Position = UDim2.new(0.800000012, 0, 0.194444448, 0)
        tabButton.Size = UDim2.new(0, 76, 0, 29)
        tabButton.Font = Enum.Font.GothamSemibold
        tabButton.TextColor3 = theme.TextColor
        tabButton.TextSize = 14.000
        tabButton.Text = tab
        tabButton.TextWrapped = false
        tabButton.TextScaled = false

        tabCorner.CornerRadius = UDim.new(0, 3)
        tabCorner.Name = "tabCorner"
        tabCorner.Parent = tabButton

        elementContainer.Name = tab.."elementContainer"
        elementContainer.Parent = elementFolder
        elementContainer.Active = true
        elementContainer.Selectable = false
        elementContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        elementContainer.BorderSizePixel = 0
        elementContainer.BackgroundTransparency = 1.000
        elementContainer.Size = UDim2.new(0, 435, 0, 372)
        elementContainer.CanvasSize = UDim2.new(0, 0, 15, 0)
        elementContainer.ScrollBarThickness = 1
        elementContainer.ScrollBarImageColor3 = theme.ScrollColor
        elementContainer.Visible = false

        elementList.Name = "elementList"
        elementList.Parent = elementContainer
        elementList.SortOrder = Enum.SortOrder.LayoutOrder

        tabButton.MouseButton1Click:Connect(function()
            for i,v in next, elementFolder:GetChildren() do
                v.Visible = false
            end
            for i,v in next, tabFrame:GetChildren() do
                if v:IsA("TextButton") then
                    v.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                end
            end
            tabButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
            elementContainer.Visible = true
        end)

        local Items = {}

        function Items:Label(t)
            local textx = t.Name
            local textLabelFrame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local tglLine = Instance.new("Frame")

            textLabelFrame.Name = "textLabelFrame"
            textLabelFrame.Parent = elementContainer
            textLabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabelFrame.BackgroundTransparency = 1.000
            textLabelFrame.Size = UDim2.new(0, 435, 0, 50)

            TextLabel.Parent = textLabelFrame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.0390804596, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 398, 0, 49)
            TextLabel.Font = Enum.Font.GothamSemibold
            TextLabel.Text = textx
            TextLabel.TextColor3 = Color3.fromRGB(212, 212, 212)
            TextLabel.TextSize = 16.000

            tglLine.Name = "tglLine"
            tglLine.Parent = textLabelFrame
            tglLine.BackgroundColor3 = Color3.fromRGB(0,0,0) 
            tglLine.BorderSizePixel = 0
            tglLine.Position = UDim2.new(0.0390804596, 0, 0.980000019, 0)
            tglLine.Size = UDim2.new(0, 401, 0, 1)
        end
        
        function Items:Title(ooo)
            local Text = ooo.Text
            local LineVisible = ooo.LineVisible
            local textLabelFrame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local tglLine = Instance.new("Frame")

            textLabelFrame.Name = "textLabelFrame"
            textLabelFrame.Parent = elementContainer
            textLabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabelFrame.BackgroundTransparency = 1.000
            textLabelFrame.Size = UDim2.new(0, 435, 0, 50)

            TextLabel.Parent = textLabelFrame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.0390804596, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 398, 0, 49)
            TextLabel.Font = Enum.Font.GothamSemibold
            TextLabel.Text = "// ".. Text .. " \\\\"
            TextLabel.TextColor3 = Color3.fromRGB(212, 212, 212)
            TextLabel.TextSize = 16.000

            tglLine.Name = "tglLine"
            tglLine.Parent = textLabelFrame
            tglLine.BackgroundColor3 = theme.HeaderColor
            tglLine.BorderSizePixel = 0
            tglLine.Position = UDim2.new(0.0390804596, 0, 0.980000019, 0)
            tglLine.Size = UDim2.new(0, 401, 0, 1)
            tglLine.Visible = LineVisible
        end
        
        function Items:Button(ins)
            local tex = ins.Name
            local nfo = ins.Desc
            local callback = ins.Callback
        
            local buttonFrame = Instance.new("Frame")
            local btnLine = Instance.new("Frame")
            local btnInfo = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local buttonCorner = Instance.new("UICorner")

            buttonFrame.Name = "buttonFrame"
            buttonFrame.Parent = elementContainer
            buttonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            buttonFrame.BackgroundTransparency = 1.000
            buttonFrame.Size = UDim2.new(0, 435, 0, 50)

            btnLine.Name = "btnLine"
            btnLine.Parent = buttonFrame
            btnLine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            btnLine.BorderSizePixel = 0
            btnLine.Position = UDim2.new(0.0390804596, 0, 0.980000019, 0)
            btnLine.Size = UDim2.new(0, 401, 0, 1)

            btnInfo.Name = "btnInfo"
            btnInfo.Parent = buttonFrame
            btnInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            btnInfo.BackgroundTransparency = 1.000
            btnInfo.Position = UDim2.new(0.0390804596, 0, 0, 0)
            btnInfo.Size = UDim2.new(0, 210, 0, 49)
            btnInfo.Font = Enum.Font.GothamSemibold
            btnInfo.Text = tex
            btnInfo.TextColor3 = Color3.fromRGB(212, 212, 212)
            btnInfo.TextSize = 16.000
            btnInfo.TextXAlignment = Enum.TextXAlignment.Left

            TextButton.Parent = buttonFrame
            TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.666666687, 0, 0.180000007, 0)
            TextButton.Size = UDim2.new(0, 128, 0, 30)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextColor3 = theme.TextColor
            TextButton.TextSize = 14.000
            TextButton.Text = nfo

            buttonCorner.CornerRadius = UDim.new(0, 3)
            buttonCorner.Name = "buttonCorner"
            buttonCorner.Parent = TextButton

            TextButton.MouseButton1Click:Connect(function()
                callback()
            end)
            end

        function Items:Textbox(ifi)
            local info = ifi.Name
            local place = ifi.Desc
            local ca = ifi.Callback

            local textBoxFrame = Instance.new("Frame")
            local btnLine = Instance.new("Frame")
            local textboxInfo = Instance.new("TextLabel")
            local textBoxout = Instance.new("Frame")
            local buttonCorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")

            textBoxFrame.Name = "textBoxFrame"
            textBoxFrame.Parent = elementContainer
            textBoxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textBoxFrame.BackgroundTransparency = 1.000
            textBoxFrame.Size = UDim2.new(0, 435, 0, 50)

            btnLine.Name = "btnLine"
            btnLine.Parent = textBoxFrame
            btnLine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            btnLine.BorderSizePixel = 0
            btnLine.Position = UDim2.new(0.0390804596, 0, 0.980000019, 0)
            btnLine.Size = UDim2.new(0, 401, 0, 1)

            textboxInfo.Name = "textboxInfo"
            textboxInfo.Parent = textBoxFrame
            textboxInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textboxInfo.BackgroundTransparency = 1.000
            textboxInfo.Position = UDim2.new(0.0390804596, 0, 0, 0)
            textboxInfo.Size = UDim2.new(0, 210, 0, 49)
            textboxInfo.Font = Enum.Font.GothamSemibold
            textboxInfo.Text = info
            textboxInfo.TextColor3 = Color3.fromRGB(212, 212, 212)
            textboxInfo.TextSize = 16.000
            textboxInfo.TextXAlignment = Enum.TextXAlignment.Left

            textBoxout.Name = "textBoxout"
            textBoxout.Parent = textBoxFrame
            textBoxout.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            textBoxout.ClipsDescendants = true
            textBoxout.Position = UDim2.new(0.666666687, 0, 0.180000007, 0)
            textBoxout.Size = UDim2.new(0, 128, 0, 30)

            buttonCorner.CornerRadius = UDim.new(0, 3)
            buttonCorner.Name = "buttonCorner"
            buttonCorner.Parent = textBoxout

            TextBox.Parent = textBoxout
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Size = UDim2.new(0, 128, 0, 30)
            TextBox.Font = Enum.Font.GothamSemibold
            TextBox.PlaceholderColor3 = theme.TextColor
            TextBox.PlaceholderText = place
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(212, 212, 212)
            TextBox.TextSize = 14.000

            TextBox.FocusLost:Connect(function(EnterPressed)
                if not EnterPressed then return end
                ca(TextBox.Text)
                TextBox.Text = ""
            end)
        end

        function Items:Slider(options, callback)
            local SliderMainText = options.Name
            callback = callback or function() end	

            local PageSliderFrame = Instance.new("Frame")
            local SliderFrameCorner = Instance.new("UICorner")
            local SiderMainTextButton = Instance.new("TextButton")
            local SliderMainTextButtonCorner = Instance.new("UICorner")
            local SlidingBar = Instance.new("Frame")
            local yesCorner = Instance.new("UICorner")
            local MainSlidingBar = Instance.new("Frame")
            local AmountLabelFrame = Instance.new("Frame")
            local AmountLabelFrameCorner = Instance.new("UICorner")
            local yesCorner = Instance.new("UICorner")
            local AmountLabel = Instance.new("TextLabel")
            local SliderText = Instance.new("TextLabel")
            local yessCorner = Instance.new("UICorner")


            PageSliderFrame.Name = "PageSliderFrame"
            PageSliderFrame.Parent = elementContainer
            PageSliderFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            PageSliderFrame.BorderSizePixel = 0
            PageSliderFrame.Position = UDim2.new(0.0211267602, 0, 0.027777778, 0)
            PageSliderFrame.Size = UDim2.new(0, 435, 0, 40)

            SliderFrameCorner.Name = "SliderFrameCorner"
            SliderFrameCorner.Parent = PageSliderFrame

            SiderMainTextButton.Name = "SiderMainTextButton"
            SiderMainTextButton.Parent = PageSliderFrame
            SiderMainTextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            SiderMainTextButton.AutoButtonColor = false
            SiderMainTextButton.BackgroundTransparency = 0.500
            SiderMainTextButton.Position = UDim2.new(0.0260000005, 0, 0.600000024, -5)
            SiderMainTextButton.Size = UDim2.new(0, 435, 0, 20)
            SiderMainTextButton.Font = Enum.Font.SourceSans
            SiderMainTextButton.Text = ""
            SiderMainTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SiderMainTextButton.TextSize = 14.000
            SiderMainTextButton.TextTransparency = 1.000

            SliderMainTextButtonCorner.Name = "SliderMainTextButtonCorner"
            SliderMainTextButtonCorner.Parent = SiderMainTextButton

            SlidingBar.Name = "SlidingBar"
            SlidingBar.Parent = SiderMainTextButton
            SlidingBar.BorderSizePixel = 0
            SlidingBar.BackgroundColor3 = Color3.fromRGB(0,0,0)

            SlidingBar.Position = UDim2.new(0.015625, 0, 0.150000006, 0) 
            SlidingBar.Size = UDim2.new(0, 400, 0, 13)


            
            MainSlidingBar.Name = "MainSlidingBar"
            MainSlidingBar.Parent = SlidingBar
            MainSlidingBar.BackgroundColor3 = theme.HeaderColor 
            MainSlidingBar.BorderSizePixel = 0
            MainSlidingBar.Position = UDim2.new(-0.00050403201, 0, -0.00384615362, 0)
            MainSlidingBar.Size = UDim2.new(0, 155, 0, 13)

            yesCorner.Name = "yesCorner"
            yesCorner.Parent = MainSlidingBar
            
            AmountLabelFrame.Name = "AmountLabelFrame"
            AmountLabelFrame.Parent = PageSliderFrame
            AmountLabelFrame.BackgroundTransparency = 0
            AmountLabelFrame.BorderSizePixel = 0
            AmountLabelFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            AmountLabelFrame.Position = UDim2.new(0.774999995, 0, 0, 3)
            AmountLabelFrame.Size = UDim2.new(0, 80, 0, 15)

            yessCorner.CornerRadius = UDim.new(0, 3)
            yessCorner.Name = "slayCorner"
            yessCorner.Parent = AmountLabelFrame
            
            AmountLabel.Name = "AmountLabel"
            AmountLabel.Parent = AmountLabelFrame
            AmountLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            AmountLabel.BackgroundTransparency = 1.000
            AmountLabel.Position = UDim2.new(0, 0, -0.200000003, 2)
            AmountLabel.Size = UDim2.new(0, 75, 0, 15)
            AmountLabel.Font = Enum.Font.SourceSans
            AmountLabel.Text = "50"
            AmountLabel.TextColor3 = theme.TextColor
            AmountLabel.TextSize = 15.000
            AmountLabel.TextStrokeTransparency = 0
            AmountLabel.TextTransparency = 0
            AmountLabel.TextXAlignment = Enum.TextXAlignment.Right

            SliderText.Name = "SliderText"
            SliderText.Parent = PageSliderFrame
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.BorderColor3 = Color3.fromRGB(27, 42, 53)
            SliderText.BorderSizePixel = 0
            SliderText.Position = UDim2.new(0, 16, 0, 3)
            SliderText.Size = UDim2.new(0, 247, 0, 19)
            SliderText.Font = Enum.Font.GothamSemibold
            SliderText.Text = SliderMainText
            SliderText.TextColor3 = Color3.fromRGB(199, 199, 199)
            SliderText.TextSize = 16.000
            SliderText.TextStrokeTransparency = 1
            SliderText.TextTransparency = 0
            SliderText.TextWrapped = true
            SliderText.TextXAlignment = Enum.TextXAlignment.Left


            local SMTB = SiderMainTextButton
            local hold = false
            local MSbar = SMTB.SlidingBar.MainSlidingBar
            local amtBox = SMTB.Parent.AmountLabelFrame.AmountLabel
            local Min = options.Min
            local Max = options.Max
            local Default = options.Default or options.Default

            local plr = game.Players.LocalPlayer
            local ms = plr:GetMouse()
            local rlpos
            local rlsiz
            local ap = Vector2.new(SMTB.AbsolutePosition.X, SMTB.AbsolutePosition.Y)
            local as = Vector2.new(SMTB.AbsoluteSize.X, SMTB.AbsoluteSize.Y)

            amtBox.Text = tostring(Default)
            MSbar.Size = UDim2.new(0, (400/Max)*Default, 0, 13)
            

            local function onInputBegan(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    hold = true
                end
            end
            SMTB.InputBegan:Connect(onInputBegan)

            game:GetService('UserInputService').InputEnded:Connect(function(input)
                if  input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch  then
                    hold = false
                end
            end)

            game:GetService('RunService').RenderStepped:Connect(function()
                if hold then
                    ap = Vector2.new(SMTB.AbsolutePosition.X, SMTB.AbsolutePosition.Y)
                    as = Vector2.new(SMTB.AbsoluteSize.X, SMTB.AbsoluteSize.Y)

                    rlpos = (ms.X-ap.X)
                    rlsiz = (ms.X-ap.X)
                    local result = math.floor(Max * (rlsiz / 400))
                    if rlpos > 400 then
                        result = Max
                    elseif rlpos < 0 then
                        result = 0
                    end

                    if rlsiz <= 400 and rlsiz >= 0 then
                        amtBox.Text = tostring(result)
                        MSbar.Size = UDim2.new(0, rlsiz, 0, 13)
                        MSbar.Visible = true
                        callback(result)
                    end
                    if rlsiz <= 0 then
                        amtBox.Text = tostring(Min)
                        MSbar.Size = UDim2.new(0, 0, 0, 13)
                        MSbar.Visible = false
                        callback(Min)
                    end
                    if rlsiz >= 400 then
                        amtBox.Text = tostring(Max)
                        MSbar.Size = UDim2.new(0, 400, 0, 13)
                        MSbar.Visible = true
                        callback(Max)
                    end
                    
                end
            end)

        end              
        function Items:Dropdown(fea)
                local StartText = fea.StartText
                local List = fea.List
                local Callback = fea.Callback
                local Name = fea.Name
                local DropdownHolder = Instance.new("Frame")
                local DropdownHolderUICorner = Instance.new("UICorner")
                local DropdownImage = Instance.new("ImageLabel")
                local DropdownHolderTitle = Instance.new("TextLabel")
                local DropdownButton = Instance.new("TextButton")
                local DropdownIn = Instance.new("Frame")
                local DropdownInList = Instance.new("UIListLayout")
                local DropdownSelectedTitle = Instance.new("TextLabel")
                local DropdownHolderUIStroke = Instance.new("UIStroke")
                
                --Properties:
                
                DropdownHolder.Name = dropdowntitle or "DropdownHolder"
                DropdownHolder.Parent = elementContainer
                DropdownHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                DropdownHolder.BorderSizePixel = 0
                DropdownHolder.ClipsDescendants = true
                DropdownHolder.Size = UDim2.new(0, 435, 0, 25)
                
                DropdownHolderUICorner.CornerRadius = UDim.new(0, 1)
                DropdownHolderUICorner.Name = "DropdownHolderUICorner"
                DropdownHolderUICorner.Parent = DropdownHolder
                
                DropdownImage.Name = "DropdownImage"
                DropdownImage.Parent = DropdownHolder
                DropdownImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownImage.BackgroundTransparency = 1.000
                DropdownImage.BorderSizePixel = 0
                DropdownImage.Position = UDim2.new(0, 5, 0, 3)
                DropdownImage.Size = UDim2.new(0, 18, 0, 18)
                DropdownImage.Image = ""
                DropdownImage.ImageColor3 = Color3.fromRGB(200, 200, 200)
                
                DropdownHolderTitle.Name = "DropdownHolderTitle"
                DropdownHolderTitle.Parent = DropdownHolder
                DropdownHolderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownHolderTitle.BackgroundTransparency = 1.000
                DropdownHolderTitle.BorderSizePixel = 0
                DropdownHolderTitle.Position = UDim2.new(0, 17, 0, 0)
                DropdownHolderTitle.Size = UDim2.new(0, 175, 0, 25)
                DropdownHolderTitle.Font = Enum.Font.GothamSemibold
                DropdownHolderTitle.Text = Name
                DropdownHolderTitle.TextColor3 = Color3.fromRGB(199, 199, 199)
                DropdownHolderTitle.TextSize = 17.000
                DropdownHolderTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                DropdownButton.Name = "DropdownButton"
                DropdownButton.Parent = DropdownHolder
                DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownButton.BackgroundTransparency = 1.000
                DropdownButton.BorderSizePixel = 0
                DropdownButton.Size = UDim2.new(0, 435, 0, 25)
                DropdownButton.ZIndex = 2
                DropdownButton.Font = Enum.Font.SourceSans
                DropdownButton.Text = ""
                DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropdownButton.TextSize = 14.000
                
                DropdownIn.Name = "DropdownIn"
                DropdownIn.Parent = DropdownHolder
                DropdownIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownIn.BackgroundTransparency = 1.000
                DropdownIn.BorderSizePixel = 0
                DropdownIn.Position = UDim2.new(0, 0, 0, 25)
                DropdownIn.Size = UDim2.new(0, 435, 0, 1)
                
                DropdownInList.Name = "DropdownInList"
                DropdownInList.Parent = DropdownIn
                DropdownInList.SortOrder = Enum.SortOrder.LayoutOrder
                
                DropdownSelectedTitle.Name = "DropdownSelectedTitle"
                DropdownSelectedTitle.Parent = DropdownHolder
                DropdownSelectedTitle.BackgroundColor3 = theme.HeaderColor
                DropdownSelectedTitle.BorderSizePixel = 0
                DropdownSelectedTitle.BackgroundTransparency = 0
                DropdownSelectedTitle.Position = UDim2.new(0, 420, 0, 2)
                DropdownSelectedTitle.Size = UDim2.new(0, -50, 0, 20)
                DropdownSelectedTitle.Font = Enum.Font.GothamSemibold
                DropdownSelectedTitle.Text = StartText
                DropdownSelectedTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropdownSelectedTitle.TextSize = 12.000

                DropdownHolderUIStroke.Name = "DropdownHolderUIStroke"
                DropdownHolderUIStroke.Parent = TextBoxToggle
                DropdownHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropdownHolderUIStroke.Color = theme.HeaderColor
                DropdownHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropdownHolderUIStroke.Thickness = 1.6
                DropdownHolderUIStroke.Transparency = 0
                DropdownHolderUIStroke.Enabled = true
                DropdownHolderUIStroke.Archivable = true
                DropdownButton.MouseButton1Click:Connect(function()
                    DropdownHolder:TweenSize(UDim2.new(0, 435, 0, 20 + DropdownInList.AbsoluteContentSize.Y), "InOut", "Quad", 0.08, true)
                end)

                DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                DropdownSelectedTitle:GetPropertyChangedSignal("Text"):Connect(function()
                    DropdownSelectedTitle.Size = UDim2.new(0, 0 - DropdownSelectedTitle.TextBounds.X - 5, 0, 20)
                end)

                for listindex, listvalue in next, List do
                    local ListButton = Instance.new("TextButton")

                    --Properties:
                    
                    ListButton.Name = listvalue or "ListButton"
                    ListButton.Parent = DropdownIn
                    ListButton.BackgroundColor3 = Color3.new(0,0,0)
                    ListButton.BorderSizePixel = 0
                    ListButton.BackgroundTransparency = 0
                    ListButton.Size = UDim2.new(0, 435, 0, 25)
                    ListButton.AutoButtonColor = false
                    ListButton.Font = Enum.Font.GothamSemibold
                    ListButton.Text = listvalue or "List"
                    ListButton.TextColor3 = theme.TextColor
                    ListButton.TextSize = 14.000

                    ListButton.MouseButton1Click:Connect(function()
                        DropdownHolder:TweenSize(UDim2.new(0, 435, 0, 25), "InOut", "Quad", 0.08, true)
                        DropdownSelectedTitle.Text = ListButton.Text
                        pcall(function()
                            Callback(ListButton.Text)
                        end)
                    end)
                    
                end

                local DropdownR = {}

                function DropdownR:Refresh(newlist)
                    newlist = newlist or {}
                    for _, alllist in pairs(DropdownIn:GetChildren()) do
                        if alllist:IsA("TextButton") then
                            alllist:Destroy()
                        end
                    end
               
                    for newlistindex, newlistvalue in next, newlist do
                        local ListButton = Instance.new("TextButton")
                        
                        ListButton.Name = newlistvalue or "ListButton"
                        ListButton.Parent = DropdownIn
                        ListButton.BackgroundColor3 = theme.HeaderColor 
                        ListButton.BorderSizePixel = 0
                        ListButton.Size = UDim2.new(0, 350, 0, 25)
                        ListButton.AutoButtonColor = false
                        ListButton.Font = Enum.Font.GothamSemibold
                        ListButton.Text = newlistvalue or "List"
                        ListButton.TextColor3 = Color3.fromRGB(180, 180, 180)
                        ListButton.TextSize = 14.000
    
                        ListButton.MouseButton1Click:Connect(function()
                            DropdownHolder:TweenSize(UDim2.new(0, 435, 0, 25), "InOut", "Quad", 0.08, true)
                            DropdownSelectedTitle.Text = ListButton.Text
                            pcall(function()
                                Call(ListButton.Text)
                            end)
                        end)
                    end
                end
                return DropdownR
            end


		function Items:Toggle(s) 
     local text = s.Name
     local nob = s.Callback
			local Toggled = false
			local Toggle = Instance.new("TextButton")
			local ToggleCorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local ToggleFrame = Instance.new("Frame")
			local ToggleFrameCorner = Instance.new("UICorner")
			local ToggleFrameRainbow = Instance.new("Frame")
			local ToggleFrameRainbowCorner = Instance.new("UICorner")
			local ToggleDot = Instance.new("Frame")
			local ToggleDotCorner = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = elementContainer
			Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
			Toggle.Size = UDim2.new(0, 430, 0, 28)
			Toggle.AutoButtonColor = false
			Toggle.Font = Enum.Font.Gotham
			Toggle.Text = ""
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextSize = 14.000

			ToggleCorner.CornerRadius = UDim.new(0, 6)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = Toggle

			Title.Name = "Title"
			Title.Parent = Toggle
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0390804596, 0, 0, 0)
			Title.Size = UDim2.new(0, 192, 0, 28)
			Title.Font = Enum.Font.GothamSemibold 
			Title.Text = text
			Title.TextColor3 = Color3.fromRGB(199, 199, 199)
			Title.TextSize = 17.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = Toggle
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
			ToggleFrame.Position = UDim2.new(0.893300176, 0, 0.142857149, 0)
			ToggleFrame.Size = UDim2.new(0, 36, 0, 19)

			ToggleFrameCorner.CornerRadius = UDim.new(1, 0)
			ToggleFrameCorner.Name = "ToggleFrameCorner"
			ToggleFrameCorner.Parent = ToggleFrame

			ToggleFrameRainbow.Name = "ToggleFrameRainbow"
			ToggleFrameRainbow.Parent = ToggleFrame
			ToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			ToggleFrameRainbow.BackgroundTransparency = 1.000
			ToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
			ToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

			ToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
			ToggleFrameRainbowCorner.Name = "ToggleFrameRainbowCorner"
			ToggleFrameRainbowCorner.Parent = ToggleFrameRainbow

			ToggleDot.Name = "ToggleDot"
			ToggleDot.Parent = ToggleFrameRainbow
			ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
			ToggleDot.Size = UDim2.new(0, 16, 0, 16)

			ToggleDotCorner.CornerRadius = UDim.new(1, 0)
			ToggleDotCorner.Name = "ToggleDotCorner"
			ToggleDotCorner.Parent = ToggleDot

			Toggle.MouseEnter:Connect(
				function()
					TweenService:Create(
						Toggle,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}
					):Play()
				end
			)
			Toggle.MouseLeave:Connect(
				function()
					TweenService:Create(
						Toggle,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}
					):Play()
				end
			)

			Toggle.MouseButton1Click:Connect(
				function()
					if Toggled == false then
						TweenService:Create(
							ToggleFrameRainbow,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundTransparency = 0}
						):Play()
						TweenService:Create(
							ToggleDot,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{Position = UDim2.new(0.595, -3, 0.289000005, -4)}
						):Play()
					else
						TweenService:Create(
							ToggleFrameRainbow,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundTransparency = 1}
						):Play()
						TweenService:Create(
							ToggleDot,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
						):Play()
					end
					Toggled = not Toggled
					pcall(nob, Toggled)
				end
			)
        end
    return Items
    end
    return Crypt
end
return Cryp 
