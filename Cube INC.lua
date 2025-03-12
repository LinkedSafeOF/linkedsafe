local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local rootPart = char:WaitForChild("HumanoidRootPart")

local teleportActive = false
local parentName = "LocalCubes"
local workspace = game:GetService("Workspace")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Parent = screenGui
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(1, -210, 1, -60)
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Enable Teleport"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20

local creatorLabel = Instance.new("TextLabel")
creatorLabel.Parent = screenGui
creatorLabel.Size = UDim2.new(0, 200, 0, 30)
creatorLabel.Position = UDim2.new(1, -210, 1, -30)
creatorLabel.BackgroundTransparency = 1
creatorLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creatorLabel.Text = "Creator by: LinkedSafe"
creatorLabel.Font = Enum.Font.SourceSans
creatorLabel.TextSize = 14
creatorLabel.TextXAlignment = Enum.TextXAlignment.Center

local destroyButton = Instance.new("TextButton")
destroyButton.Parent = screenGui
destroyButton.Size = UDim2.new(0, 200, 0, 50)
destroyButton.Position = UDim2.new(1, -210, 1, -110)
destroyButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
destroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
destroyButton.Text = "Destroy Script"
destroyButton.Font = Enum.Font.SourceSansBold
destroyButton.TextSize = 20

local teleportLoop
teleportLoop = spawn(function()
    while true do
        if teleportActive then
            local targetCubes = workspace:FindFirstChild(parentName)
            if targetCubes then
                for _, cube in pairs(targetCubes:GetChildren()) do
                    if cube:IsA("BasePart") and teleportActive then
                        rootPart.CFrame = cube.CFrame + Vector3.new(0, 5, 0)
                        wait(0.1)
                    end
                end
            end
        end
        wait(0.1)
    end
end)

button.MouseButton1Click:Connect(function()
    teleportActive = not teleportActive
    button.Text = teleportActive and "Disable Teleport" or "Enable Teleport"
end)

destroyButton.MouseButton1Click:Connect(function()
    teleportActive = false
    screenGui:Destroy()
    if teleportLoop then
        teleportLoop:Disconnect()
    end
end)
