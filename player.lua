Player = {}

function Player.create(x, y, speed)
    local self = {}

    self.x = x
    self.y = y
    self.sprite = love.graphics.newImage("Assets/Sprites/ship-a1.png")
    self.speed = speed

    return self
end

function Player.update(dt, self)
    -- setup nilai
    local direction = {}
    direction.x = 0
    direction.y = 0

    -- input kontrol horisontal
    if love.keyboard.isDown("a") then
        direction.x = direction.x - 1
    elseif love.keyboard.isDown("d") then
        direction.x = direction.x + 1
    end

    -- input kontrol vertikal
    if love.keyboard.isDown("w") then
        direction.y = direction.y - 1
    elseif love.keyboard.isDown("s") then
        direction.y = direction.y + 1
    end

    -- ubah posisi objek berdasarkan arah
    self.x = self.x + direction.x * self.speed
    self.y = self.y + direction.y * self.speed
end

function Player.draw(self)
    love.graphics.draw(self.sprite, self.x, self.y)
end