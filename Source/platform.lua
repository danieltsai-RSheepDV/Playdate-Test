import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local gfx <const> = playdate.graphics

Platform = {
	sprite = nil,
}

function Platform:init(x, y)
	local playerImage = gfx.image.new("Images/playerImage copy.png")
	assert( playerImage )
	
	self.sprite = gfx.sprite.new( playerImage )
	self.sprite:moveTo( x, y )
	self.sprite:setCollideRect( 0, 0, self.sprite:getSize() )
	self.sprite:add()
end