///InitializeHero

//reseed the random generator
randomize();

self.score = 1;

enum HeroStates {
    Idle,
    Dancing,
    Walking
}

enum Parts {
    Backs,
    Bodies,
    Faces,
    Feet,
    Tails,
    Ears,
    last,
    Horns
}

enum Backs {
    BrownBackPlates,
    BrownDorsalFin,
    BrownNormalWings,
    last
}

self.potential_part = noone;
self.potential_part_type = -1;

global.possibleIdles[Parts.Backs, Backs.BrownBackPlates] = brown_back_plates
global.possibleWalks[Parts.Backs, Backs.BrownBackPlates] = brown_back_plates
global.possibleDances[Parts.Backs, Backs.BrownBackPlates] = brown_back_plates_dance

global.possibleIdles[Parts.Backs, Backs.BrownDorsalFin] = brown_dorsal_fin
global.possibleWalks[Parts.Backs, Backs.BrownDorsalFin] = brown_dorsal_fin
global.possibleDances[Parts.Backs, Backs.BrownDorsalFin] = brown_dorsal_fin_dance

global.possibleIdles[Parts.Backs, Backs.BrownNormalWings] = brown_normal_wings
global.possibleWalks[Parts.Backs, Backs.BrownNormalWings] = brown_normal_wings
global.possibleDances[Parts.Backs, Backs.BrownNormalWings] = brown_normal_wings_dance


enum Bodies {
    BrownBody,
    last
}

global.possibleIdles[Parts.Bodies, Bodies.BrownBody] = brown_body
global.possibleWalks[Parts.Bodies, Bodies.BrownBody] = brown_body
global.possibleDances[Parts.Bodies, Bodies.BrownBody] = brown_body_dancing

enum Faces {
    BrownMammalFace,
    BrownReptileFace,
    FireReptileFace,
    last
}

global.possibleIdles[Parts.Faces, Faces.BrownMammalFace] = brown_mammal_face
global.possibleWalks[Parts.Faces, Faces.BrownMammalFace] = brown_mammal_face
global.possibleDances[Parts.Faces, Faces.BrownMammalFace] = brown_mammal_face

global.possibleIdles[Parts.Faces, Faces.BrownReptileFace] = brown_reptile_face
global.possibleWalks[Parts.Faces, Faces.BrownReptileFace] = brown_reptile_face
global.possibleDances[Parts.Faces, Faces.BrownReptileFace] = brown_reptile_face

global.possibleIdles[Parts.Faces, Faces.FireReptileFace] = fire_reptile_face
global.possibleWalks[Parts.Faces, Faces.FireReptileFace] = fire_reptile_face
global.possibleDances[Parts.Faces, Faces.FireReptileFace] = fire_reptile_face

enum Feet {
    BrownBlobFeet,
    BrownFins,
    BrownSixLegs,
    last
}

global.possibleIdles[Parts.Feet, Feet.BrownBlobFeet] = brown_blob_feet
global.possibleWalks[Parts.Feet, Feet.BrownBlobFeet] = brown_blob_feet_walk
global.possibleDances[Parts.Feet, Feet.BrownBlobFeet] = brown_blob_feet_dance

global.possibleIdles[Parts.Feet, Feet.BrownFins] = brown_fins
global.possibleWalks[Parts.Feet, Feet.BrownFins] = brown_fins_walk
global.possibleDances[Parts.Feet, Feet.BrownFins] = brown_fins_dance

global.possibleIdles[Parts.Feet, Feet.BrownSixLegs] = brown_six_legs
global.possibleWalks[Parts.Feet, Feet.BrownSixLegs] = brown_six_legs_walk
global.possibleDances[Parts.Feet, Feet.BrownSixLegs] = brown_six_legs_dance

enum Tails {
    BrownInsectTail,
    BrownFluffyTail,
    LongBrownFluffyTail,
    last
}

global.possibleIdles[Parts.Tails, Tails.BrownInsectTail] = brown_insect_tail
global.possibleWalks[Parts.Tails, Tails.BrownInsectTail] = brown_insect_tail
global.possibleDances[Parts.Tails, Tails.BrownInsectTail] = brown_insect_tail

global.possibleIdles[Parts.Tails, Tails.BrownFluffyTail] = brown_fluffy_tail
global.possibleWalks[Parts.Tails, Tails.BrownFluffyTail] = brown_fluffy_tail
global.possibleDances[Parts.Tails, Tails.BrownFluffyTail] = brown_fluffy_tail

global.possibleIdles[Parts.Tails, Tails.LongBrownFluffyTail] = long_brown_fluffy_tail
global.possibleWalks[Parts.Tails, Tails.LongBrownFluffyTail] = long_brown_fluffy_tail_walk
global.possibleDances[Parts.Tails, Tails.LongBrownFluffyTail] = long_brown_fluffy_tail

enum Ears {
    LowBrownFloppyEars,
    LowBrownFluffyEars,
    LowBrownPointyEars,
    LowBrownRoundedEars,
    last
}

global.possibleIdles[Parts.Ears, Ears.LowBrownFloppyEars] = low_brown_floppy_ears
global.possibleWalks[Parts.Ears, Ears.LowBrownFloppyEars] = low_brown_floppy_ears
global.possibleDances[Parts.Ears, Ears.LowBrownFloppyEars] = low_brown_floppy_ears

global.possibleIdles[Parts.Ears, Ears.LowBrownFluffyEars] = low_brown_fluffy_ears
global.possibleWalks[Parts.Ears, Ears.LowBrownFluffyEars] = low_brown_fluffy_ears
global.possibleDances[Parts.Ears, Ears.LowBrownFluffyEars] = low_brown_fluffy_ears

global.possibleIdles[Parts.Ears, Ears.LowBrownPointyEars] = low_brown_pointy_ears
global.possibleWalks[Parts.Ears, Ears.LowBrownPointyEars] = low_brown_pointy_ears
global.possibleDances[Parts.Ears, Ears.LowBrownPointyEars] = low_brown_pointy_ears

global.possibleIdles[Parts.Ears, Ears.LowBrownRoundedEars] = low_brown_rounded_ears
global.possibleWalks[Parts.Ears, Ears.LowBrownRoundedEars] = low_brown_rounded_ears
global.possibleDances[Parts.Ears, Ears.LowBrownRoundedEars] = low_brown_rounded_ears

//superhero mode
//global.currentPart[Parts.Backs] = Backs.BrownNormalWings
//global.currentPart[Parts.Bodies] = Bodies.BrownBody
//global.currentPart[Parts.Ears] = Ears.LowBrownPointyEars
//global.currentPart[Parts.Faces] = Faces.FireReptileFace
//global.currentPart[Parts.Feet] = Feet.BrownFins
//global.currentPart[Parts.Tails] = Tails.BrownInsectTail
//global.currentPart[Parts.Horns] = noone


global.currentPart[Parts.Backs] = noone
global.currentPart[Parts.Bodies] = Bodies.BrownBody
global.currentPart[Parts.Ears] = noone
global.currentPart[Parts.Faces] = noone
global.currentPart[Parts.Feet] = Feet.BrownBlobFeet
global.currentPart[Parts.Tails] = noone
global.currentPart[Parts.Horns] = noone

global.partObjects[Parts.Backs] = obj_back
global.partObjects[Parts.Bodies] = obj_body
global.partObjects[Parts.Ears] = obj_ear
global.partObjects[Parts.Faces] = obj_face
global.partObjects[Parts.Feet] = obj_feet
global.partObjects[Parts.Horns] = obj_horns
global.partObjects[Parts.Tails] = obj_tails

self.left_or_right = 1;

for (var i = 0; i < Parts.last; i++) {
    var part = instance_create(x, y, global.partObjects[i])
    self.parts[i] = part
}

SetIdle();
