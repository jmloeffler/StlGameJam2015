enum HeroStates {
    Idle,
    Dancing,
    Walking
}

enum Parts {
    Backs,
    Bodies,
    Ears,
    Faces,
    Feet,
    Horns,
    Tails,
    last
}

enum Backs {
    BrownBackPlates,
    BrownDorsalFin,
    BrownNormalWings,
    last
}

global.possibleParts[Parts.Backs, Backs.BrownBackPlates, HeroStates.Idle] = brown_back_plates
global.possibleParts[Parts.Backs, Backs.BrownBackPlates, HeroStates.Walk] = brown_back_plates
global.possibleParts[Parts.Backs, Backs.BrownBackPlates, HeroStates.Dance] = brown_back_plates_dance

global.possibleParts[Parts.Backs, Backs.BrownDorsalFin, HeroStates.Idle] = brown_dorsal_fin
global.possibleParts[Parts.Backs, Backs.BrownDorsalFin, HeroStates.Walk] = brown_dorsal_fin
global.possibleParts[Parts.Backs, Backs.BrownDorsalFin, HeroStates.Dance] = brown_dorsal_fin_dance

global.possibleParts[Parts.Backs, Backs.BrownNormalWings, HeroStates.Idle] = brown_normal_wings
global.possibleParts[Parts.Backs, Backs.BrownNormalWings, HeroStates.Walk] = brown_normal_wings
global.possibleParts[Parts.Backs, Backs.BrownNormalWings, HeroStates.Dance] = brown_normal_wings_dance


enum Feet {
    BrownBlobFeet,
    BrownFins,
    BrownSixLegs,
    last
}

enum Bodies {
    BrownBody,
    last
}

enum Ears {
    LowBrownFloppyEars,
    LowBrownFluffyEars,
    LowBrownPointyEars,
    LowBrownRoundedEars,
    last
}

enum Faces {
    BrownMammalFace,
    BrownReptileFace,
    FireReptileFace,
    last
}

enum Tails {
    BrownInsectTail,
    BrownFluffyTail,
    LongBrownFluffyTail,
    last
}
