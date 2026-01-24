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
    for i=1,#player_ingredients do
        if player_ingredients[i] == item then
            if currency >= ingredients_price[item] then
                player_ingredients[i] += 1
                update_currency(-ingredients_price[item])
                return true
            else
                return false
            end
        end
    end
end

function use_ingredient(item)
    for i=1,#player_ingredients do
        if player_ingredients[i] == item then
            if player_ingredients[i] <= 0 then
                return false
            end
            player_ingredients[i] -= 1
            return true
        end
    end
    return false
end

function buy_furniture(item, cost)
    for i=1,#player_furnitures do
        if player_furnitures[i] == item then
            if currency >= furnitures_price[item] then
                player_furnitures[i] += 1
                update_currency(-furnitures_price[item])
                return true
            else
                return false
            end
        end
    end
end

function use_furniture(item)
    for i=1,#player_furnitures do
        if player_furnitures[i] == item then
            if player_furnitures[i] <= 0 then
                return false
            end
            player_ingredients[i] -= 1
            return true
        end
    end
    return false
end

-- drawing
function draw_currency()
    
end

function draw_ingredients_inventory()

end

function draw_furnitures_inventory()
    
end