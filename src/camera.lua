player = player
mycamera = {}
camerabox = {}

function camerainit()
    mycamera.x = 0
    mycamera.y = 0
    camera(mycamera.x, mycamera.y)
end

function updatecamera()
    -- Note: Does not draw camera position, only updates it
    mycamera.x = mid(0, player.x - 64, 128)
    mycamera.y = mid(0, player.y - 64, 128)
end