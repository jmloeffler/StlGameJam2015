///InitializeHero

enum HeroStates {
    Idle,
    Dancing,
    Walking
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

self.potential_part = noone;
self.potential_part_type = -1;

global.partObjects[Parts.backs] = obj_back
global.partObjects[Parts.bodies] = obj_back
global.partObjects[Parts.ears] = obj_ear
global.partObjects[Parts.faces] = obj_face
global.partObjects[Parts.feet] = obj_feet
global.partObjects[Parts.horns] = obj_horns
global.partObjects[Parts.tails] = obj_tails

global.parts[Parts.backs] = noone
global.parts[Parts.bodies] = brown_body
global.parts[Parts.ears] = noone
global.parts[Parts.faces] = noone
global.parts[Parts.feet] = brown_blob_feet
global.parts[Parts.horns] = noone
global.parts[Parts.tails] = noone

self.left_or_right = 1;

for (var i = 0; i < Parts.last; i++) {
    var part = instance_create(x, y, global.partObjects[i])
    (part).sprite_index = global.parts[i]
    (part).depth = -1
    self.parts[i] = part
}

self.currentState = HeroStates.Idle;
