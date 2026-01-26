dayCount = 0
ui_timer = 0
player = player
mycamera = mycamera
state = "Day"
text = ""

function draw_dialogue2()
    if ui_timer <= 0 then return end
    rectfill(20,80,110,110,1)
    rect(20,80,110,110, 7)
    print(text, 25, 85 , 7)
end

function cycleupdate()
    if ui_timer > 0 then
        ui_timer -= 1
    end
end

function sleep() --check if player is near a bed object, bedcoords = {12,16}
    if player.x > 8 and player.x < 16 and player.y > 12 and player.y < 20 then
        if btnp(4) then
            ui_timer = 40
            if state == "Night" then
                dayCount += 1
                state = "Day"
            else
                state = "Night"
            end

            text = "skipping through..."
        end
    end
    drawtimeofday()
    daycountupdate()
end

function daycountupdate()
    print(dayCount, 120, 2, 7)
end

function drawtimeofday()
    if state == "Day" then
        spr(104, 55,0, 2, 2)
    else
        spr(106 ,55,0, 2, 2)
    end
end

