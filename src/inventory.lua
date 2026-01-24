function init_inventory_currency()
    currency = 100
    player_ingredients = {beef = 2, egg = 4, pizza = 2, coke = 3}
    player_furnitures = {chair = 2, table = 1}
end

-- updating and stuff
function update_currency(amount)
    currency += amount
end

function buy_ingredient(item, cost)
    if currency >= cost then
        add(player_ingredients, item, 1)
        update_currency(-cost)
        return true
    else
        return false
    end
end

function use_ingredient(item)
    for i=1,#player_ingredients do
        if player_ingredients[i] == item then
            del(player_ingredients, item)
            return true
        end
    end
    return false
end

function buy_furniture(item, cost)
    if currency >= cost then
        add(player_furnitures, item, 1)
        update_currency(-cost)
        return true
    else
        return false
    end
end

function use_furniture(item)
    for i=1,#player_furnitures do
        if player_furnitures[i] == item then
            del(player_furnitures, item)
            return true
        end
    end
    return false
end

-- drawing
function draw_currency()
    print("Currency: "..currency, 1, 1, 7)
end

function draw_ingredients_inventory()

end

function draw_furnitures_inventory()
    
end