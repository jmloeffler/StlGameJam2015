self.currentState = HeroStates.Idle
self.parts[Parts.bodies].sprite_index = brown_body
// room_restart()

//don't acquire the new part if one wasn't possible
if(self.potential_part_type > 0 && self.potential_part_type < 7) {
    self.parts[self.potential_part_type].sprite_index = self.potential_part;
}
