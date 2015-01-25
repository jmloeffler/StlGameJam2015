///UpdateHeroParts

for (var i = 0; i < Parts.last; i++) {
    self.parts[i].x = self.x;
    self.parts[i].y = self.y;
    self.parts[i].image_xscale = self.left_or_right;
}