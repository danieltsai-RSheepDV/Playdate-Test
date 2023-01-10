
import "Physics/RigidBody2D"
import "Physics/Vector2D"

local gfx <const> = playdate.graphics

class('Player').extends(RigidBody2D)

function Player:init(x, y)
	Player.super.init(self, "Images/playerImage.png", 0, 0)
end