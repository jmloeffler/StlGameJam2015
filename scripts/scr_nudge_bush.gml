enum nudge_states {
    idle,
    shaking
}

if(self.nudge_state == nudge_states.idle) {
    alarm[1] = 20;
    self.nudge_state = nudge_states.shaking;
    self.sprite_index = spr_animated_bush;
}

//player nudges bush
//dice roll to determine whether fruit or part
//if part, display the part
//if player dances and has the potential, give player the part
