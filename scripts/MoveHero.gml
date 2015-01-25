///MoveHero
if self.currentState == HeroStates.Idle or self.currentState == HeroStates.Walking {
    var lastState = self.currentState
    
    var moveSpeed = 3;
    var xDir = 0, yDir = 0;
    
    if keyboard_check(vk_up) {
        var wall = DetectCollisionWithWall(0, -moveSpeed)
        var topBush = DetectCollision(0, -moveSpeed, obj_bush)
        
        if wall == noone and topBush == noone {
            yDir -= moveSpeed;
        }
        
        CollideWithBush(topBush)
    }
    
    if keyboard_check(vk_down) {
        var wall = DetectCollisionWithWall(0, moveSpeed)
        var bottomBush = DetectCollision(0, moveSpeed, obj_bush)
    
        if wall == noone and bottomBush == noone {
            yDir += moveSpeed;
        }
        
        CollideWithBush(bottomBush)
    }
    
    if keyboard_check(vk_right) {
        var wall = DetectCollisionWithWall(moveSpeed, 0)
        var rightBush = DetectCollision(moveSpeed, 0, obj_bush)
    
        if wall == noone and rightBush == noone {
            xDir += moveSpeed;
        }
        
        CollideWithBush(rightBush)
    }
    
    if keyboard_check(vk_left) {
        var wall = DetectCollisionWithWall(-moveSpeed, 0)
        var leftBush = DetectCollision(-moveSpeed, 0, obj_bush)
    
        if wall == noone and leftBush == noone {
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
    
    if speed > 0 and lastState == HeroStates.Idle {
        SetWalking();
    } else if speed == 0 and lastState == HeroStates.Walking {
        SetIdle();
    }

}
