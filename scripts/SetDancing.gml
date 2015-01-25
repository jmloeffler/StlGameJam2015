///SetDancing

for (var i = 0; i < Parts.last; i++) {
    self.parts[i].sprite_index = GetSprite(i, HeroStates.Dancing)
    self.parts[i].image_speed = 0.25
}
self.currentState = HeroStates.Dancing
speed = 0
alarm[0] = 20
