import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "player"
import "platform"

local gfx <const> = playdate.graphics

local a = Player(0,0);
local b = Platform;

local function init()
	b:init(200, 200)

	local backgroundImage = gfx.image.new( "Images/playerImage.png" )
	assert( backgroundImage )

	gfx.sprite.setBackgroundDrawingCallback(
		function( x, y, width, height )
			backgroundImage:draw( 0, 0 )
		end
	)
end

init()

function playdate.update()

	if playdate.buttonIsPressed( playdate.kButtonUp ) then
		a.velocity.y = -2
	end
	if playdate.buttonIsPressed( playdate.kButtonRight ) then
		a:move( 2, 0 )
	end
	if playdate.buttonIsPressed( playdate.kButtonDown ) then
		a:move( 0, 2 )
	end
	if playdate.buttonIsPressed( playdate.kButtonLeft ) then
		a:move( -2, 0 )
	end
	
	-- a.velocity.y = a.velocity.y + 0.1
	-- a:move(0, a.velocity.y)

	gfx.sprite.update()
	playdate.timer.updateTimers()

end