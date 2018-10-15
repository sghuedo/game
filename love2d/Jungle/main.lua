#!/bin/lua

-- contain all the objects
local world = {}

-- adding a object to the world
function addObject(properties)
    table.insert(world, {
        x = properties.x or 0,
        y = properties.y or 0,
        vx = properties.vx or 0,
        vy = properties.vy or 0,
        width = properties.width or 0,
        height = properties.height or 0
        })

end


-- first function called
function love.load()
        addObject({
            x = 200, y = 200, width = 100, height = 100})
end


-- called every frame
-- dt is the time between the updates
function love.update(dt)
    
end


-- draw things
function love.draw()

    for i, obj in ipairs(world) do
        --draw a rectangle
        love.graphics.circle(
        "fill",obj.x, obj.y, obj.width, obj.height
        )
    end
end




