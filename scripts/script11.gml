///DetectCollisionWithWall
var xOffset = argument0
var yOffset = argument1

wallTypes[0] = obj_left_edge


var leftEdge = DetectCollision(xOffset, yOffset, obj_left_edge)
if leftEdge == noone then return leftEdge
