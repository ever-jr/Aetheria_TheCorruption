local Character = {}

local StarterPoints = 10

Character.Attributes = {
    Name = "CharacterName",
    Race = "Human",
    Level = 1,
    Gold = 0,
    Melee = 1,
    Ranged = 1,
    Magic = 1,
    Luck = 1,
    Inventory = '',
    Equipped_Slot1 = '',
    Equipped_Slot2 = '',
    Equipped_Slot3 = '',
    Equipped_HeadSlot = '',
    Equipped_TorsoSlot = '',
    Equipped_LegsSlot = '',
}

-- Additional Attributes: limited to 3 only
Character.Races = {
    Human = {
        Melee = 1,
        Ranged = 1,
        Luck = 1,
    },
    Orc = {
        Melee = 3,
        Passive = 'Born_for_battle'
    }
}

-- Starter Attributes
Character.StarterClasses = {
    Traveller = {
        Ranged = 2,
        Luck = 4,
        Gold = 25
    },
    Monk = {
        Melee = 3,
        Magic = 2,
        Gold = 5
    }
}


function Character.New(name: string, starterClass: string, race: string)
    local newCharacterAttributes = Character.Attributes

    newCharacterAttributes.Name = name
    newCharacterAttributes.Race = race

    local starterClassAttributesToReplace = Character.StarterClasses[starterClass]
    for attributeName, attributeValue in pairs(starterClassAttributesToReplace) do
        newCharacterAttributes[attributeName] = attributeValue
    end

end

function Character.Load(playerData: {})
    
end


return Character