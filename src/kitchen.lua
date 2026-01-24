kitchen = {}

function kitcheninit()
    kitchenX = 60
    kitchenY = 60
    kitchenFaceDir = 3
end

function drawkitchen()
    if (kitchenFaceDir == 0) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 1) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 2) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 3) then spr(0, kitchenX, kitchenY, 1, 1) end
end

function movekitchen()
    if (btn(0)) then kitchenX -= 1; kitchenFaceDir = 0 end -- Go left
    if (btn(1)) then kitchenX += 1; kitchenFaceDir = 1 end -- Go right
    if (btn(2)) then kitchenY -= 1; kitchenFaceDir = 2 end -- Go up
    if (btn(3)) then kitchenY += 1; kitchenFaceDir = 3 end -- Go down
end
