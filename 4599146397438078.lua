if not game.CoreGui:FindFirstChild("XScreen") then
    local XScreen = Instance.new("ScreenGui")
    local XToggle = Instance.new("TextButton")
    local Corner = Instance.new("UICorner")
    local Stroke = Instance.new("UIStroke")
    local Title = Instance.new("TextLabel")
    local SubTextEN = Instance.new("TextLabel")
    local SubTextVN = Instance.new("TextLabel")
    local BGImage = Instance.new("ImageLabel")
    XScreen.Name = "XScreen"
    XScreen.Parent = game.CoreGui
    XScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    XScreen.ResetOnSpawn = false
    BGImage.Parent = XScreen
    BGImage.Name = "Background"
    BGImage.Image = "rbxassetid://" .. tostring(82739520704081)
    BGImage.Size = UDim2.new(1, 0, 1, 0)
    BGImage.Position = UDim2.new(0, 0, 0, 0)
    BGImage.BackgroundTransparency = 1
    BGImage.ImageTransparency = 0
    BGImage.ImageColor3 = Color3.fromRGB(160, 90, 255)
    BGImage.ScaleType = Enum.ScaleType.Crop
    BGImage.ZIndex = 0
    Title.Name = "Title"
    Title.Parent = XScreen
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Position = UDim2.new(0, 0, 0.05, 0)
    Title.Font = Enum.Font.GothamBlack
    Title.Text = "🎃SCRIPT IS DOWN FOR NOW🎃\nComback: Date ? November 2025"
    Title.TextColor3 = Color3.fromRGB(220, 190, 255)
    Title.TextSize = 23
    Title.ZIndex = 2
    SubTextEN.Name = "SubTextEN"
    SubTextEN.Parent = XScreen
    SubTextEN.BackgroundTransparency = 1
    SubTextEN.Size = UDim2.new(0, 400, 0, 40)
    SubTextEN.Position = UDim2.new(0.5, -200, 0.45, 0)
    SubTextEN.Font = Enum.Font.GothamMedium
    SubTextEN.Text = "English: HNC Hub is temporarily down for maintenance. Join our Discord to get the latest update notifications!"
    SubTextEN.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubTextEN.TextSize = 15
    SubTextEN.TextWrapped = true
    SubTextEN.ZIndex = 2
    SubTextVN.Name = "SubTextVN"
    SubTextVN.Parent = XScreen
    SubTextVN.BackgroundTransparency = 1
    SubTextVN.Size = UDim2.new(0, 400, 0, 40)
    SubTextVN.Position = UDim2.new(0.5, -200, 0.35, 0)
    SubTextVN.Font = Enum.Font.GothamMedium
    SubTextVN.Text = "Việt Nam: HNC Hub tạm ngưng để khắc phục lỗi. Tham gia Discord để nhận thông báo cập nhật sớm nhất!"
    SubTextVN.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubTextVN.TextSize = 15
    SubTextVN.TextWrapped = true
    SubTextVN.ZIndex = 2
    XToggle.Name = "XToggle"
    XToggle.Parent = XScreen
    XToggle.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
    XToggle.Position = UDim2.new(0.5, -100, 0.80, 0)
    XToggle.Size = UDim2.new(0, 200, 0, 45)
    XToggle.Font = Enum.Font.GothamBold
    XToggle.Text = "Copy Discord Link"
    XToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    XToggle.TextSize = 20
    XToggle.Draggable = true
    XToggle.AutoButtonColor = false
    XToggle.ZIndex = 2
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = XToggle
    Stroke.Parent = XToggle
    Stroke.Thickness = 2
    Stroke.Color = Color3.fromRGB(200, 140, 255)
    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    local TweenService = game:GetService("TweenService")
    local Info = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
    XToggle.MouseEnter:Connect(function()
        TweenService:Create(XToggle, Info, {BackgroundColor3 = Color3.fromRGB(160, 60, 255)}):Play()
        TweenService:Create(Stroke, Info, {Color = Color3.fromRGB(255, 200, 255)}):Play()
    end)
    XToggle.MouseLeave:Connect(function()
        TweenService:Create(XToggle, Info, {BackgroundColor3 = Color3.fromRGB(128, 0, 255)}):Play()
        TweenService:Create(Stroke, Info, {Color = Color3.fromRGB(200, 140, 255)}):Play()
    end)
    XToggle.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/wa52S9VvPP")
        XToggle.Text = "Copied!"
        TweenService:Create(XToggle, Info, {BackgroundColor3 = Color3.fromRGB(90, 0, 180)}):Play()
        task.wait(1.5)
        XToggle.Text = "Copy Discord Link"
        TweenService:Create(XToggle, Info, {BackgroundColor3 = Color3.fromRGB(128, 0, 255)}):Play()
    end)
end
repeat wait() until game:IsLoaded()
task.wait()
for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
    v:Disable()
end
