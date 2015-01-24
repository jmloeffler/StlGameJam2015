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

self.left_or_right = 1;
self.potential_part = "";
self.potential_part_type = 0;

var back = instance_create(x, y, obj_back);
//back.sprite_index = brown_dorsal_fin;
self.parts[Parts.backs] = back;

var ear = instance_create(x, y, obj_ear);
self.parts[Parts.ears] = ear;

var face = instance_create(x, y, obj_face);
self.parts[Parts.faces] = face;

var feet = instance_create(x, y, obj_feet);
self.parts[Parts.feet] = feet;

var horns = instance_create(x, y, obj_horns);
self.parts[Parts.horns] = horns;

var tails = instance_create(x, y, obj_tails);
self.parts[Parts.tails] = tails;

self.Dancing = DancerState.Idle;
