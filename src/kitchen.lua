kitchen = {}
player = player
function kitcheninit()
    kitchenX = 20
    kitchenY = 40
    kitchenFaceDir = 3
    printspriteY = 20
    choiceX = 1
    choiceY = 1
end

function drawkitchen()
    rectfill(20, 20, 40, 40)
    if (btn(5) and (player.x >= 14 and player.x <= 30) and (player.y >= 14 and player.y <= 30)) then
      player.cooking = true
      rectfill(8, 8, 120, 120, 12)
      for i = 5, 7 do spr(i, 10, printspriteY * i - 60, 1, 1) end
       printspriteY = 20
      for i = 8, 10 do spr(i, 40, printspriteY * i - 120, 1, 1) end
       printspriteY = 20
      for i = 11, 13 do spr(i, 80, printspriteY * i - 180, 1, 1) end
       printspriteY = 20
      spr(50, kitchenX, kitchenY, 1, 1)
    else 
      player.cooking = false
    end   
end

function movekitchen()
    
    if (btn(0)) and choiceX == 3 then kitchenX = 50; choiceX = 2; -- Go left
    elseif (btn(0)) and choiceX == 2 then kitchenX = 20; choiceX = 1; end

    if (btn(1)) and choiceX == 1 then kitchenX = 50; choiceX = 2;  -- Go right
    elseif (btn(1)) and choiceX == 2 then kitchenX = 90; choiceX = 3; end

    if (btn(2)) and choiceY == 3 then kitchenY = 60; choiceY = 2;  -- Go up
    elseif (btn(2)) and choiceY == 2 then kitchenY = 40; choiceY = 1; end

    if (btn(3)) and choiceY == 1 then kitchenY = 60; choiceY = 2;-- Go down
    elseif (btn(3)) and choiceY == 2 then kitchenY = 80; choiceY = 3; end

    if (btn(5)) then 
    draw_dialogue("You cooked the ingredient!") -- draw dialogue box but not working cause can't access drawText.lua
    -- put into inventory but not implemented
    end
end
