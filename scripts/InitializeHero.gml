///InitializeHero

enum DancerState {
    Idle,
    Dancing
}

enum Parts {
    backs,
    bodies,
    ears,
    faces,
    feet,
    horns,
    tails,
    last
}

self.potential_part = "";
self.potential_part_type = 0;

global.partObjects[Parts.backs] = obj_back
global.partObjects[Parts.bodies] = obj_back
global.partObjects[Parts.ears] = obj_ear
global.partObjects[Parts.faces] = obj_face
global.partObjects[Parts.feet] = obj_feet
global.partObjects[Parts.horns] = obj_horns
global.partObjects[Parts.tails] = obj_tails

global.parts[Parts.backs] = brown_back_plates
global.parts[Parts.bodies] = spr_hero
global.parts[Parts.ears] = noone
global.parts[Parts.faces] = noone
global.parts[Parts.feet] = noone
global.parts[Parts.horns] = noone
global.parts[Parts.tails] = noone

self.left_or_right = 1;

for (var i = 0; i < Parts.last; i++) {
    var part = instance_create(x, y, global.partObjects[i])
    (part).sprite_index = global.parts[i]
    (part).depth = -1
    self.parts[i] = part
}

self.Dancing = DancerState.Idle;
