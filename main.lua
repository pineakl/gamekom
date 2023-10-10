function love.load()
    love.window.setTitle("Void Trigger")
    love.window.setMode(320, 480);

    Player_ship = {}
    Player_ship.x = 140
    Player_ship.y = 300
    Player_ship.sprite = love.graphics.newImage("Assets/Sprites/ship-a1.png")
end

function love.update(dt)
    Player_ship.y = Player_ship.y - 1
end

function love.draw()
    love.graphics.draw(Player_ship.sprite, Player_ship.x, Player_ship.y)
end