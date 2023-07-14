local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')


local Modules = ReplicatedStorage:WaitForChild('modules')
local Character = require(Modules:WaitForChild('Character'))


local RemoteEvents = ReplicatedStorage:WaitForChild('RemoteEvents')
local CreateNewCharacter = RemoteEvents:WaitForChild('CreateNewCharacter')


-- Local modules
local PlayerData = require(script:WaitForChild('PlayerData'))


Players.PlayerAdded:Connect(function(player)
    local loadedDataSuccessfully, playerData = pcall(function()
        return PlayerData.load(player.UserId)
    end)

    if loadedDataSuccessfully and playerData then
        local attributes = {} -- << TURN PLAYER DATA INTO ATTRIBUTES
        Character.load(attributes)
    else
        -- Redirect to CharacterCreation Screen
        CreateNewCharacter:FireClient(player)
    end
end)