player = {}

function playerinit()
    playerX = 60
    playerY = 60
    playerFaceDir = 3
end

function drawplayer()
    if (playerFaceDir == 0) then spr(20, playerX, playerY, 2, 2) end
    if (playerFaceDir == 1) then spr(22, playerX, playerY, 2, 2) end
    if (playerFaceDir == 2) then spr(18, playerX, playerY, 2, 2) end
    if (playerFaceDir == 3) then spr(16, playerX, playerY, 2, 2) end
end

function moveplayer()
    if (btn(0)) then playerX -= 1; playerFaceDir = 0 end -- Go left
    if (btn(1)) then playerX += 1; playerFaceDir = 1 end -- Go right
    if (btn(2)) then playerY -= 1; playerFaceDir = 2 end -- Go up
    if (btn(3)) then playerY += 1; playerFaceDir = 3 end -- Go down
end
