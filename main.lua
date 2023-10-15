PlayerObj = require("player");

Player_ship = {}

function love.load()
    love.window.setTitle("Void Trigger")
    love.window.setMode(320, 480);

    Player_ship = Player.create(140, 300, 3);
end

function love.update(dt)
    Player.update(dt, Player_ship)
end

function love.draw()
    Player.draw(Player_ship)
end