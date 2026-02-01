customer = {}

function customerinit()
    customer.width = 16
    customer.height = 16
    customer.speed = 2

    customer.x = 185
    customer.y = 137
    customer.oldX = customer.x
    customer.oldY = customer.y

    customer.currentSpr = 16

    customer.doingHeist = false
end

function drawcustomer()
    spr(customer.currentSpr, customer.x, customer.y, 2, 2)
end

function updatecustomer()
    customer.oldX = customer.x
    customer.oldY = customer.y

    local dx = 0
    local dy = 0
    
    if (customer.y > 57)then
        dy -= 1
        customer.currentSpr = 18
    end
    dx, dy = normalize(dx, dy)
    customer.x += dx * customer.speed
    customer.y += dy * customer.speed

    if (mapcollide()) then
        customer.x = customer.oldX
        customer.y = customer.oldY
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