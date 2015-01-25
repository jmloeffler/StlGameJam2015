///SetIdle
for (var i = 0; i < Parts.last; i++) {
    self.parts[i].sprite_index = GetSprite(i, HeroStates.Idle)
}
self.currentState = HeroStates.Idle
