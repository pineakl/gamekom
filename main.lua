PlayerObj = require("player");

Player_ship = {}
Player_ship_dua = {}

function love.load()
    love.window.setTitle("Void Trigger")
    love.window.setMode(320, 480);

    Player_ship = Player.create(140, 300, 3);
    Player_ship_dua = Player.create(140, 300, 2)
end

function love.update(dt)
    Player.input(Player_ship)
    Player.input(Player_ship_dua)

    Player.update(dt, Player_ship)
    Player.update(dt, Player_ship_dua)
end

function love.draw()
    Player.draw(Player_ship)
    Player.draw(Player_ship_dua)
end