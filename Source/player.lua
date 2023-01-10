import "RigidBody2D"

local gfx <const> = playdate.graphics

class('Player').extends(RigidBody2D)

function Player:init(x, y)
	Player.super.init(self, 0, 0, "Images/playerImage.png")
end