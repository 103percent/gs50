--[[
    Pipe Class
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The Pipe class represents the pipes that randomly spawn in our game, which act as our primary obstacles.
    The pipes can stick out a random distance from the top or bottom of the screen. When the player collides
    with one of them, it's game over. Rather than our bird actually moving through the screen horizontally,
    the pipes themselves scroll through the game to give the illusion of player movement.
]]

Medal = Class{}

-- since we only want the image loaded once, not per instantation, define it externally
local MEDAL_WIDTH = 2
local MEDAL_HEIGHT = 2

function Medal:init(score)
    self.x = VIRTUAL_WIDTH / 2 - 16
    self.y = VIRTUAL_HEIGHT / 2 - 20

    self.width = MEDAL_WIDTH
    self.height = MEDAL_HEIGHT

    if score >= 3 then
		MEDAL_IMAGE = love.graphics.newImage('gold.png')
	elseif score >= 2 then 	
		MEDAL_IMAGE = love.graphics.newImage('silver.png')
	elseif score >= 1 then 	
		MEDAL_IMAGE = love.graphics.newImage('bronze.png')
	end	
end

function Medal:update(dt)
    
end

function Medal:render()
    love.graphics.draw(MEDAL_IMAGE, self.x, self.y) 
end