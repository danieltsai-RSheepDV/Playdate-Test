import "CoreLibs/object"

class('Vector2D').extends(Object)

function Vector2D:init(x, y)
    self.x = x
    self.y = y
end