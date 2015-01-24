enum nudge_states {
    idle,
    shaking
}

if(self.nudge_state == nudge_states.idle) {
    alarm[1] = 20;
    self.nudge_state = nudge_states.shaking;
    self.sprite_index = spr_animated_bush;
}
