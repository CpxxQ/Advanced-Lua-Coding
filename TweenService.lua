local TweenService = game:GetService("TweenService")
local Button = script.Parent

local START_SIZE = Button.Size
local GOAL_SIZE = UDim2.new(0, 229 -9, 0, 81 -9) -- Button Size (origin x: -9, origin y: -9)

local Info = (
    0.1 -- Tweening Length (Seconds)
    Enum.EasingStyle. -- Choose EasingStyle
    Enum.EasingDirection -- Choose EasingDirection
    0, -- Repeat How Many Times? (0 = No More Repeating)
    true/false -- Reverse After Tweening
    0, -- Delay Before Tweening
)

local MouseEnterTween = TweenService:Create(Button, Info, {Size = GOAL_SIZE})
local MouseLeaveTween = TweenService:Create(Button, Info, {Size = START_SIZE})

Button.MouseEnter:Connect(function()
    MouseEnterTween:Play()
    Button.MouseLeave:Connect(function()
        MouseLeaveTween:Play()
    end)
end)
