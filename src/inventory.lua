function init_inventory_currency()
    currency = 100
    player_ingredients = {beef = 2, egg = 4}
    player_furnitures = {chair = 2, table = 1}
    ingredients_price = {beef = 5, egg = 3}
    furnitures_price = {chair = 20, table = 50}
end

-- updating and stuff
function update_currency(amount)
    currency += amount
end

function buy_ingredient(item)
    if currency >= ingredients_price[item] then
        player_ingredients[item] += 1
        update_currency(-ingredients_price[item])
        return true
    else
        return false
    end
end

function use_ingredient(item)
    if player_ingredients[item] <= 0 then
        return false
    else
        player_ingredients[item] -= 1
        return true
    end
end

function buy_furniture(item)
    if currency >= furnitures_price[item] then
        player_furnitures[item] += 1
        update_currency(-furnitures_price[item])
        return true
    else
        return false
    end
end

function use_furniture(item)
    if player_furnitures[item] <= 0 then
        return false
    else
        player_ingredients[item] -= 1
        return true
    end
end

-- drawing
function draw_currency()
    
end

function draw_ingredients_inventory()

end

function draw_furnitures_inventory()
    
end