local NewCharacterScreen = Instance.new('ScreenGui')
NewCharacterScreen.Name = 'NewCharacterScreen'

local Background = Instance.new('Frame', NewCharacterScreen)
Background.Name = 'Background'
Background.AnchorPoint = Vector2.new(.5, .5)
Background.Position = UDim2.fromScale(.5, .5)
Background.Size = UDim2.fromScale(.8, .8)
Background.BorderSizePixel = 0

local rounder = Instance.new('UICorner', Background)
rounder.CornerRadius = UDim.new(0, 15)

local padding = Instance.new('UIPadding', Background)
padding.PaddingTop = UDim.new(0, 10)
padding.PaddingRight = UDim.new(0, 10)
padding.PaddingBottom = UDim.new(0, 10)
padding.PaddingLeft = UDim.new(0, 10)

local CharacterRace
local CharacterStarterClass

local NameInput = Instance.new('TextBox', Background)
NameInput.Name = 'NameInput'

local Submit = Instance.new('TextButton', Background)
Submit.Name = 'Submit'
Submit.AnchorPoint = Vector2.new(1, 1)
Submit.Position = UDim2.fromScale(1, 1)
Submit.Size = UDim2.new(.2, 0, 0, 25)
Submit.BackgroundColor3 = Color3.fromHex('#fff')
Submit.Text = 'Submit Character'
Submit.TextScaled = true
rounder:Clone().Parent = Submit


return NewCharacterScreen