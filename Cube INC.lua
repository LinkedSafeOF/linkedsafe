local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local rootPart = char:WaitForChild("HumanoidRootPart")

local teleportActive = false -- Starts off
local parentName = "LocalCubes" -- Name of the Parent containing the cubes
local workspace = game:GetService("Workspace")

-- Creating the GUI Interface
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui") -- Adds to CoreGui to prevent removal

local button = Instance.new("TextButton")
button.Parent = screenGui
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(1, -210, 1, -60) -- Bottom right corner
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Enable Teleport"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20

-- Infinite teleport loop
spawn(function()
    while true do
        if teleportActive then
            local targetCubes = workspace:FindFirstChild(parentName)
            if targetCubes then
                for _, cube in pairs(targetCubes:GetChildren()) do
                    if cube:IsA("BasePart") and teleportActive then
                        rootPart.CFrame = cube.CFrame + Vector3.new(0, 5, 0)
                        wait(0.1) -- Small delay to prevent overload
                    end
                end
            end
        end
        wait(0.1) -- Small pause to prevent crashes
    end
end)

-- Toggle teleport on/off
button.MouseButton1Click:Connect(function()
    teleportActive = not teleportActive -- Toggles between on/off
    button.Text = teleportActive and "Disable Teleport" or "Enable Teleport"
end)
