SetIdle();
// room_restart()
show_debug_message("finished dancing");

//don't acquire the new part if one wasn't possible
if(self.potential_part_type >= 0 && self.potential_part_type < Parts.last) {
//    self.parts[self.potential_part_type].sprite_index = self.potential_part;
    global.currentPart[self.potential_part_type] = self.potential_part;
}

alarm[0] = -1;
