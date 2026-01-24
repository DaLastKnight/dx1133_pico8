kitchen = {}

function kitcheninit()
    kitchenX = 20
    kitchenY = 40
    kitchenFaceDir = 3
    printspriteY = 20
    choiceX = 1
    choiceY = 1
end

function drawkitchen()
    rectfill(0, 0, 128, 128, 12)
    if (kitchenFaceDir == 0) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 1) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 2) then spr(0, kitchenX, kitchenY, 1, 1) end
    if (kitchenFaceDir == 3) then spr(0, kitchenX, kitchenY, 1, 1) end
    for i = 4, 6 do spr(i, 10, printspriteY * i - 40, 1, 1) end
     printspriteY = 20
    for i = 7, 9 do spr(i, 40, printspriteY * i - 100, 1, 1) end
     printspriteY = 20
    for i = 10, 12 do spr(i, 80, printspriteY * i - 160, 1, 1) end
     printspriteY = 20
    
end

function movekitchen()
    
    if (btn(0)) and choiceX == 3 then kitchenX = 50; choiceX = 2; kitchenFaceDir = 0 -- Go left
    elseif (btn(0)) and choiceX == 2 then kitchenX = 20; choiceX = 1; kitchenFaceDir = 0 end

    if (btn(1)) and choiceX == 1 then kitchenX = 50; choiceX = 2; kitchenFaceDir = 1  -- Go right
    elseif (btn(1)) and choiceX == 2 then kitchenX = 90; choiceX = 3; kitchenFaceDir = 1 end

    if (btn(2)) and choiceY == 3 then kitchenY = 60; choiceY = 2; kitchenFaceDir = 2  -- Go up
    elseif (btn(2)) and choiceY == 2 then kitchenY = 40; choiceY = 1; kitchenFaceDir = 2 end

    if (btn(3)) and choiceY == 1 then kitchenY = 60; choiceY = 2; kitchenFaceDir = 3 -- Go down
    elseif (btn(3)) and choiceY == 2 then kitchenY = 80; choiceY = 3; kitchenFaceDir = 3 end
end
