enum nudge_states {
    idle,
    shaking
}

if(self.nudge_state == nudge_states.idle) {
    alarm[1] = 20;
    self.nudge_state = nudge_states.shaking;
    self.sprite_index = spr_animated_bush;

    
    var response = random(1);
    var hero = instance_find(obj_hero,0);
    
    if(response > 0.3) {
        hero.score -= 1;
        self.chomping = true;
        //DetectDeath();
        alarm[2] = 40;
    }
    else {
        //player can win a part
        RandomlyPickPart();
        hero.potential_part = part;
        hero.potential_part_type = partType;
        self.potential_part = part;
        self.potential_part_type = partType;
        
        var partDescription = sprite_get_name(global.possibleIdles[partType, part]);
    
        //show_message("You've found a mate carrying " + partDescription + "! Dance <spacebar> to procreate!");
        
        show_debug_message("Part won: " + sprite_get_name(global.possibleIdles[partType, part]));
    }

}
