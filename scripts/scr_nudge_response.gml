self.nudge_state = nudge_states.idle;

var response = random(1);
var hero = instance_find(obj_hero,0);

if(response > 0.6) {
    hero.score += 1;
}
else {
    //player can win a part
    RandomlyPickPart();
    hero.potential_part = part;
    hero.potential_part_type = partType;
    
    show_debug_message("Part won: " + sprite_get_name(global.possibleIdles[partType, part]));
}
self.sprite_index = spr_bush;
alarm[1] = -1;
