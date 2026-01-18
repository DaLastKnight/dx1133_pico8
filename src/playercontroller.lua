circleX = 60
circleY = 60

function drawcircle()
    circfill(circleX, circleY, 6, 12)
end

function movecircle()
    if (btn(0)) then circleX -= 1 end
    if (btn(1)) then circleX += 1 end
    if (btn(2)) then circleY -= 1 end
    if (btn(3)) then circleY += 1 end
end
