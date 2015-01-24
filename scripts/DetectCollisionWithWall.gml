///DetectCollisionWithWall(xOffset, yOffset)
var xOffset = argument0
var yOffset = argument1

var wallIndex = 0
self.wallTypes[wallIndex++] = obj_left_edge
self.wallTypes[wallIndex++] = obj_top_edge
self.wallTypes[wallIndex++] = obj_right_edge
self.wallTypes[wallIndex++] = obj_bottom_edge

self.wallTypes[wallIndex++] = obj_ll_corner
self.wallTypes[wallIndex++] = obj_lr_corner
self.wallTypes[wallIndex++] = obj_ul_corner
self.wallTypes[wallIndex++] = obj_ur_corner

for (var i = 0; i < array_length_1d(wallTypes); i += 1) {
    var wallObject = DetectCollision(xOffset, yOffset, wallTypes[i])
    if wallObject != noone then return wallObject
}

return noone
