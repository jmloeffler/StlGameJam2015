self.nudge_state = nudge_states.idle;

var response = random(1);
show_debug_message(response);
if(response > 0.5) {
    var hero = instance_find(obj_hero,0);
    hero.score += 1;
}
else {
    //animate the mate
    //respawn - next level
}
