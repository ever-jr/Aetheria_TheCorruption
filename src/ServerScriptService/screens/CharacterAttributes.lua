local CharacterAttributes = Instance.new('ScreenGui')
CharacterAttributes.Name = 'CharacterAttributes'
CharacterAttributes.Enabled = false

local Background = Instance.new('Frame', CharacterAttributes)
Background.Name = 'Background'
Background.AnchorPoint = Vector2.new(1, .5)
Background.Position = UDim2.fromScale(1, .5)
Background.Size = UDim2.fromScale(.5, .5)
Background.BorderSizePixel = 0

return CharacterAttributes