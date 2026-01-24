-- Debug file that has helper functions to help debug issues

player = player

function printdebuginfo()
    print("X: " .. flr(player.x), 0, 0, 7)
    print("Y: " .. flr(player.y), 0, 8, 7)
end

function showplayercollider()
    rect(player.x, player.y, player.x + 15, player.y + 15, 3)
end