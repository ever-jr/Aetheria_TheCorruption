local Players = game:GetService('Players')

local Screens = {
    CharacterAttributes = require(script.CharacterAttributes),
    NewCharacterScreen = require(script.NewCharacterScreen)
}

local changeColors = {
    Background = {
        BackgroundColor3 = Color3.fromHex('#0a1d2c'),
        BackgroundTransparency = .3
    }
}

Players.PlayerAdded:Connect(function(player)
    local playerGui = player:WaitForChild('PlayerGui')

    for _, screen: ScreenGui in pairs(Screens) do
        for frameName, frameNewAttributes in pairs(changeColors) do
            local frame = screen:FindFirstChild(frameName)
            if not frame then return end
            for attributeName, attributeValue in pairs(frameNewAttributes) do
                frame[attributeName] = attributeValue
            end
        end
        screen.Parent = playerGui
    end
end)