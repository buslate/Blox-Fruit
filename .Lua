local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
local backgroundFrame = Instance.new("Frame")
backgroundFrame.Size = UDim2.new(1, 0, 1, 0) -- ขนาดเต็มหน้าจอ
backgroundFrame.Position = UDim2.new(0, 0, 0, 0) -- ตำแหน่งด้านบนซ้ายของหน้าจอ
backgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- สีดำ
backgroundFrame.BackgroundTransparency = 0.99 -- ความโปร่งใส
backgroundFrame.Parent = screenGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.5, -100, -1, 0) -- จะให้เริ่มต้นด้านบนของหน้าจอ
textLabel.BackgroundTransparency = 1 -- ทำให้ข้อความโปร่งใส
textLabel.TextColor3 = Color3.new(1, 1, 1) -- สีข้อความ (สีขาว)
textLabel.Text = "Wait For New Ver. NIGGER"
textLabel.Parent = screenGui
textLabel.BorderSizePixel = 0 -- กำหนดให้ไม่มีขอบ
textLabel.TextScaled = true -- ปรับขนาดข้อความอัตโนมัติ
textLabel.TextWrapped = true -- ให้ข้อความขึ้นบรรทัดใหม่ตามขนาดของ TextLabel
textLabel.TextXAlignment = Enum.TextXAlignment.Center -- จัดข้อความให้อยู่ตรงกลาง
textLabel.TextYAlignment = Enum.TextYAlignment.Center -- จัดข้อความให้อยู่ตรงกลาง
textLabel.Font = Enum.Font.SourceSansBold -- ฟอนต์

local curveIntensity = 10 -- ความโค้ง (1-10)
textLabel.TextScaled = true
textLabel.TextWrapped = true
textLabel.TextStrokeTransparency = 0
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel.TextScaled = true
textLabel.TextSize = 20
textLabel.TextTransparency = 0
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
wait(1)
-- เลื่อน TextLabel มาที่กลางของหน้าจอ
textLabel:TweenPosition(UDim2.new(0.5, -100, 0.5, -25), "Out", "Quint", 1, true)
wait(10)
textLabel:TweenPosition(UDim2.new(0.5, -100, 1, 0), "Out", "Quint", 1, true)
wait(1)
screenGui:Destroy()
