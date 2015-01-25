///SetWalking
for (var i = 0; i < Parts.last; i++) {
    self.parts[i].sprite_index = GetSprite(i, HeroStates.Walking)
    self.parts[i].image_speed = 0.25
}
self.currentState = HeroStates.Walking
speed = 0
