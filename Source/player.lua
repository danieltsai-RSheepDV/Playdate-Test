import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local gfx <const> = playdate.graphics

Player = {
	sprite = nil,
	speed = 0.0
}

function Player:init()
	local playerImage = gfx.image.new("Images/playerImage.png")
	assert( playerImage )
	print("tests");
	
	self.sprite = gfx.sprite.new( playerImage )
	self.sprite:moveTo( 200, 120 )
	self.sprite:add()
	self.sprite:setCollideRect( 0, 0, self.sprite:getSize() )
end

function Player:move(x, y)
	self.sprite:moveWithCollisions(self.sprite.x + x, self.sprite.y + y)
end

function Player:collisionResponse(other)
    local response = gfx.sprite.kCollisionTypeOverlap
    
    
    return response
end