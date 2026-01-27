player = player
mycamera = mycamera

function mapinit()
    current_map_y = 0
end

function drawmap()
    camera(mycamera.x, mycamera.y)
    map(0, 0, 0, 0, 32, 32) -- Draws restaurant part of the map
    
    -- To draw the entire map in main.p8
    -- map(0, 0, 0, 0, 128, 64)
end

function mapcollide()
    sprite_01 = mget(flr(player.x / 8), flr(player.y / 8))
    sprite_02 = mget(flr((player.x + player.width - 1) / 8), flr(player.y / 8))
    sprite_03 = mget(flr(player.x / 8), flr((player.y + player.height - 1) / 8))
    sprite_04 = mget(flr((player.x + player.width - 1) / 8), flr((player.y + player.height - 1) / 8))

    if fget(sprite_01, 3) then return true
    elseif fget(sprite_02, 3) then return true
    elseif fget(sprite_03, 3) then return true
    elseif fget(sprite_04, 3) then return true end

    return false
end