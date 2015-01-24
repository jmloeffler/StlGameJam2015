///MoveHero

var moveSpeed = 3;
var xDir = 0, yDir = 0;

if keyboard_check(vk_up) {
    var topWall = DetectCollision(0, -moveSpeed, obj_wall)
    var topBush = DetectCollision(0, -moveSpeed, obj_bush)
    
    if topWall == noone and topBush == noone {
        yDir -= moveSpeed;
    }
    
    CollideWithBush(topBush)
}

if keyboard_check(vk_down) {
    var bottomWall = DetectCollision(0, moveSpeed, obj_wall)
    var bottomBush = DetectCollision(0, moveSpeed, obj_bush)

    if bottomWall == noone and bottomBush == noone {
        yDir += moveSpeed;
    }
    
    CollideWithBush(bottomBush)
}

if keyboard_check(vk_right) {
    var rightWall = DetectCollision(moveSpeed, 0, obj_wall)
    var rightBush = DetectCollision(moveSpeed, 0, obj_bush)

    if rightWall == noone and rightBush == noone {
        xDir += moveSpeed;
    }
    
    CollideWithBush(rightBush)
}

if keyboard_check(vk_left) {
    var leftWall = DetectCollision(-moveSpeed, 0, obj_wall)
    var leftBush = DetectCollision(-moveSpeed, 0, obj_bush)

    if leftWall == noone and leftBush == noone {
        xDir -= moveSpeed;
    }
    
    CollideWithBush(leftBush)
}

var myDirection = point_direction(0, 0, xDir, yDir);

var mySpeed = 0;
if xDir == 0 && yDir == 0 {
    mySpeed = 0;
} else {
    mySpeed = moveSpeed;
}

direction = myDirection;
speed = mySpeed;
