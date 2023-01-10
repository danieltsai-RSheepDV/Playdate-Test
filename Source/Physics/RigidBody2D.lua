import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "Physics/Vector2D"

local gfx <const> = playdate.graphics

class('RigidBody2D').extends(gfx.sprite)

function RigidBody2D:init(spriteString, x, y)
	local playerImage = gfx.image.new(spriteString)
	assert( playerImage )
	
	self:setImage(playerImage)
	self:moveTo( x, y )
	self:add()
	self:setCollideRect( 0, 0, self:getSize() )

	self.velocity = Vector2D(0,0)

	print("ran")
end

function RigidBody2D:move(x, y)
	self:moveWithCollisions(self.x + x, self.y + y)
end

function RigidBody2D:collisionResponse(other)
    local response = gfx.sprite.kCollisionTypeOverlap
    
    return response
end