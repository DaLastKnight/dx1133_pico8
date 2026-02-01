player = {}

function playerinit()
    player.width = 16
    player.height = 16
    player.speed = 2

    player.x = 56
    player.y = 56
    player.oldX = player.x
    player.oldY = player.y

    player.currentSpr = 16

    player.doingHeist = false
end

function drawplayer()
    spr(player.currentSpr, player.x, player.y, 2, 2)
end

function moveplayer()
    player.oldX = player.x
    player.oldY = player.y

    local dx = 0
    local dy = 0

    if (player.y > 57)then
        dy -= 1
        player.currentSpr = 18
    end
    
    if (btn(0)) then dx -= 1; player.currentSpr = 20 end -- Go left
    if (btn(1)) then dx += 1; player.currentSpr = 22 end -- Go right
    if (btn(2)) then dy -= 1; player.currentSpr = 18 end -- Go up
    if (btn(3)) then dy += 1; player.currentSpr = 16 end -- Go down
    if (btn(4)) then player.doingHeist = true; player.x = 56; player.y = 56; current_map_y = 32 end

    dx, dy = normalize(dx, dy)
    player.x += dx * player.speed
    player.y += dy * player.speed

    if (not player.doingHeist) then
        if (player.x < 0) then
            player.x = 0
        elseif (player.x > 240) then
            player.x = 240
        end

        if (player.y < 0) then
            player.y = 0
        elseif (player.y > 240) then
            player.y = 240
        end
    end

    if (mapcollide()) then
        player.x = player.oldX
        player.y = player.oldY
    end
end

function normalize(a, b)
    local length = sqrt(a * b + a * b)
    if (length > 0) then
        a /= length
        b /= length
    end
    
    return a, b
end
