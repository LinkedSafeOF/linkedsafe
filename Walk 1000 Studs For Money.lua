-- GUI Oluştur
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false -- Karakter resetlense bile GUI kaybolmaz

-- Arka plan çerçevesi
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 240) -- Çerçeve boyutu artırıldı
frame.Position = UDim2.new(1, -160, 0.4, 0) -- Sağ üst köşe
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Siyah arka plan
frame.BackgroundTransparency = 0.5 -- Yarı saydam
frame.Parent = screenGui

-- Arctic Butonu
local arcticButton = Instance.new("TextButton")
arcticButton.Size = UDim2.new(0, 140, 0, 40)
arcticButton.Position = UDim2.new(0, 5, 0, 5)
arcticButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Gri ton
arcticButton.Text = "Forest"
arcticButton.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
arcticButton.Parent = frame

-- Desert Butonu
local desertButton = Instance.new("TextButton")
desertButton.Size = UDim2.new(0, 140, 0, 40)
desertButton.Position = UDim2.new(0, 5, 0, 50)
desertButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Gri ton
desertButton.Text = "Desert"
desertButton.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
desertButton.Parent = frame

-- Arctic2 Butonu
local arctic2Button = Instance.new("TextButton")
arctic2Button.Size = UDim2.new(0, 140, 0, 40)
arctic2Button.Position = UDim2.new(0, 5, 0, 95)
arctic2Button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Gri ton
arctic2Button.Text = "Arctic"
arctic2Button.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
arctic2Button.Parent = frame

-- Lava Butonu
local lavaButton = Instance.new("TextButton")
lavaButton.Size = UDim2.new(0, 140, 0, 40)
lavaButton.Position = UDim2.new(0, 5, 0, 140)
lavaButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Gri ton
lavaButton.Text = "Lava"
lavaButton.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
lavaButton.Parent = frame

-- Jungle Butonu
local jungleButton = Instance.new("TextButton")
jungleButton.Size = UDim2.new(0, 140, 0, 40)
jungleButton.Position = UDim2.new(0, 5, 0, 185)
jungleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Gri ton
jungleButton.Text = "Jungle"
jungleButton.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
jungleButton.Parent = frame

-- Made By Lear Yazısı
local madeByText = Instance.new("TextLabel")
madeByText.Size = UDim2.new(0, 140, 0, 20)
madeByText.Position = UDim2.new(0, 5, 0, 225) -- Yeni pozisyon
madeByText.BackgroundTransparency = 1 -- Arka plan yok
madeByText.Text = "Made By Lear (Updated by LinkedSafe)"
madeByText.TextColor3 = Color3.new(1, 1, 1) -- Beyaz yazı
madeByText.TextScaled = true -- Otomatik boyutlandırma
madeByText.Parent = frame

-- Işınlanma fonksiyonları
local function teleportToArctic()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(-17.42072296142578, 3.201287031173706, -1120.34814453125)
    end
end

local function teleportToDesert()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(500, 21.648000717163086, -2635)
    end
end

local function teleportToArctic2()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(1000, 21.648000717163086, -5135)
    end
end

local function teleportToLava()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(1500, 21.648000717163086, -10135)
    end
end

local function teleportToJungle()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(2000, 21.648000717163086, -25135)
    end
end

-- Buton işlevleri
arcticButton.MouseButton1Click:Connect(teleportToArctic)
desertButton.MouseButton1Click:Connect(teleportToDesert)
arctic2Button.MouseButton1Click:Connect(teleportToArctic2)
lavaButton.MouseButton1Click:Connect(teleportToLava)
jungleButton.MouseButton1Click:Connect(teleportToJungle)
