if self.currentState == HeroStates.Idle {
    self.parts[Parts.bodies].sprite_index = brown_body_dancing;
    self.parts[Parts.bodies].image_speed = 0.25
    alarm[0] = 20;
    self.currentState = HeroStates.Dancing;
    speed = 0
}