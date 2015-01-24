var moveSpeed = 3;
var xDir = 0, yDir = 0;

if keyboard_check(vk_up) { //and place_free(x, y-moveSpeed) {
    yDir -= moveSpeed;
}

if keyboard_check(vk_down) { //and place_free(x, y+moveSpeed) {
    yDir += moveSpeed;
}

if keyboard_check(vk_right) { //and place_free(x+moveSpeed, y) {
    xDir += moveSpeed;
}

if keyboard_check(vk_left) { //and place_free(x-moveSpeed, y) {
    xDir -= moveSpeed;
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
