///DetectCollision(xOffset, yOffset, type)
var xOffset = argument0
var yOffset = argument1
var type = argument2

var collidingObject = collision_rectangle(bbox_left + xOffset, bbox_top + yOffset, bbox_right + xOffset, bbox_bottom + yOffset, type, false, true)

return collidingObject
