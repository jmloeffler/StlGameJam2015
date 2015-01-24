if self.Dancing == DancerState.Idle && score >= 5 {
    self.sprite_index = spr_dancing;
    alarm[0] = 20;
    score -= 5;
}    
